class Item < ActiveRecord::Base
  has_many :collection_items
  has_many :collections, through: :collection_items

  def date
    self.created_at.strftime('%B %d %A')
  end
end
