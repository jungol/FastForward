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

class UserItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
end
