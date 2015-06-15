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

FactoryGirl.define do
  factory :list_collection do
    list_id 1
collection_id 1
  end

end
