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
#  list_id       :integer
#

class Item < ActiveRecord::Base

  scope :top_votes, -> { order('upvotes_count DESC') }

  validates :description, presence: true
  validates :title, presence: true
  validates :url, presence: true

  has_many :upvotes, dependent: :destroy
  has_many :user_items
  has_many :users, :through => :user_items
  belongs_to :list

  def date
    self.created_at.strftime('%B %d')
  end

end
