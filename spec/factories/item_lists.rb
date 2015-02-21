# == Schema Information
#
# Table name: item_lists
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :item_list do
    item_id 1
list_id 1
  end

end
