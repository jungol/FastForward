# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  upvotes_count :integer          default("0")
#  date          :date
#  year          :integer
#  author        :string
#  journal       :string
#  abstract      :text
#

class Item < ActiveRecord::Base

  default_scope -> { order('year DESC') }

  validates :title, presence: true
  validates :url, presence: true
  # validates :year, presence: true
  validates :author, presence: true
  # validates :journal, presence: true

  # before_create :already_exists?

  # has_many :upvotes, dependent: :destroy
  has_many :user_items
  has_many :item_lists
  has_many :users, :through => :user_items
  has_many :lists, :through => :item_lists

  before_create :already_exists?


  private

    def already_exists?
      Item.find_or_initialize_by(title: self.title)
    end

end
