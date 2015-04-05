class Collection < ActiveRecord::Base
  has_many :list_collections
  has_many :lists, :through => :list_collections
end
