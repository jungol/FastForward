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
  has_many :user_lists
  has_many :users, :through => :user_lists
  # default_scope -> { where(published: true) }


  # Creates hash of list_ids (keys) and tag counts (values)
  def self.hash_of_list_id_and(tags)
    joins(:taggings).
    where('tag_id IN (?)', tags).
    where(published: true).
    group('list_id').
    having('COUNT(list_id) >= ?', tags.count).
    count
  end

  # Grabs keys of hash above to get the requested list objects
  def self.get_lists_with(tags)
    hash_of_list_id_and(tags).map{ |list_id, tag_count| List.find_by_id(list_id) }
  end

  def get_view_count
    if view_count > 0
      "Viewed #{view_count} times"
    else
      return
    end
  end

end