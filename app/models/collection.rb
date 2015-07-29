class Collection < ActiveRecord::Base
  belongs_to :user

  has_many :collection_items
  has_many :items, through: :collection_items
    
end
