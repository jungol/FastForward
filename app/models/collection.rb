class Collection < ActiveRecord::Base
  default_scope -> { order('name ASC')}
  has_many :list_collections
  has_many :lists, :through => :list_collections
end
