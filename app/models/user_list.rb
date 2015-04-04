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

class UserList < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

end
