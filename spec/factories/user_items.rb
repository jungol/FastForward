# == Schema Information
#
# Table name: user_items
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user_item do
    user_id 1
item_id 1
  end

end
