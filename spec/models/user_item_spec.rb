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

require 'rails_helper'

RSpec.describe UserItem, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
