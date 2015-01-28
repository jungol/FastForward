# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  votes         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  upvotes_count :integer          default("0")
#

class Item < ActiveRecord::Base

  scope :top_votes, -> { order('upvotes_count DESC') }

  validates :description, length: { maximum: 100 }
  validates :title, presence: true
  validates :url, presence: true

  has_many :upvotes, dependent: :destroy

  def date
    self.created_at.strftime('%m/%d/%y')
  end

end