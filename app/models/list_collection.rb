# == Schema Information
#
# Table name: list_collections
#
#  id            :integer          not null, primary key
#  list_id       :integer
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ListCollection < ActiveRecord::Base
  belongs_to :list
  belongs_to :collection
end
