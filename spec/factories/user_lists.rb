# == Schema Information
#
# Table name: user_lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user_list do
    user_id 1
list_id 1
  end

end
