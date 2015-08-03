class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :users, through: :taggings,
                   source: :taggable,
                   source_type: "User"
  has_many :items, through: :taggings,
                   source: :taggable,
                   source_type: "Item"
end
