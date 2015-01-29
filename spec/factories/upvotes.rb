# == Schema Information
#
# Table name: upvotes
#
#  id         :integer          not null, primary key
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer
#

FactoryGirl.define do
  factory :upvote do
    count 1
item_id 1
  end

end