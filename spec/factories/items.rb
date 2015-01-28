# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  votes         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  upvotes_count :integer          default("0")
#

FactoryGirl.define do
  factory :item do
    title "MyString"
url "MyString"
description "MyString"
votes 1
  end

end
