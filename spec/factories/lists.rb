# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string
#  upvotes_count :integer
#  curator       :string
#  curator_url   :string
#  view_count    :integer
#  published     :boolean
#  sources       :string
#

FactoryGirl.define do
  factory :list do
    description "MyString"
  end

end
