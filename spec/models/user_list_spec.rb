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

require 'rails_helper'

RSpec.describe UserList, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end