class Item < ActiveRecord::Base
  has_many :collection_items
  has_many :collections, through: :collection_items
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings


  def created_at_date
    self.created_at.strftime('%B %d %A')
  end
end
