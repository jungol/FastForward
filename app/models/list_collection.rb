class ListCollection < ActiveRecord::Base
  belongs_to :list
  belongs_to :collection
end
