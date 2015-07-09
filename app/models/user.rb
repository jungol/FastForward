# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  link                   :string
#  school                 :string
#  position               :string
#  first_name             :string
#  last_name              :string
#  admin                  :boolean
#

class User < ActiveRecord::Base
  
  has_many :user_items
  has_many :items, :through => :user_items
  has_many :user_lists
  has_many :lists, :through => :user_lists
  has_many :subscriptions
  has_many :lists, through: :subscriptions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid.to_s).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.password = Devise.friendly_token[0,20]
    end
  end

  def has_item?(item)
    user_items.find_by(item_id: item.id)
  end

  def follow!(list)
    subscriptions.create!(list_id: list.id)
  end

  def unfollow!(list)
    subscriptions.find_by(list_id: list.id).destroy
  end

  def following?(list)
    subscriptions.find_by(list_id: list.id)
  end

end
