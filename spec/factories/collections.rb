# == Schema Information
#
# Table name: collections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#  ancestry   :string
#

FactoryGirl.define do
  factory :collection do
    name "MyString"
  end

end
