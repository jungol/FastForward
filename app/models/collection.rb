# == Schema Information
#
# Table name: collections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#  ancestry   :string
#

class Collection < ActiveRecord::Base
  default_scope -> { order('name ASC')}
  has_many :list_collections
  has_many :lists, :through => :list_collections
  has_ancestry
end
