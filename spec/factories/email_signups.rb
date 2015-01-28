# == Schema Information
#
# Table name: email_signups
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :email_signup do
    email "MyString"
  end

end
