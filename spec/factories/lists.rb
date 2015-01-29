# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string
#

FactoryGirl.define do
  factory :list do
    description "MyString"
  end

end