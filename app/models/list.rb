# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string
#  upvotes_count :integer
#  curator       :string
#  curator_url   :string
#

class List < ActiveRecord::Base
  has_many :item_lists
  has_many :items, :through => :item_lists
  has_many :taggings
  has_many :tags, :through => :taggings

  def date
    self.created_at.strftime('%B %d')
  end

  def self.tagged_with(tags)
    joins(:taggings).where('tag_id IN (?)', tags).group('list_id').count
  end
end

# List.joins(:taggings).where('tag_id IN (?)', [1,2]).group('list_id').having('count_all >= ?', 2).count

# User.select('users.*').joins(:payments).group('users.id').having('count(payments.id) > 4')