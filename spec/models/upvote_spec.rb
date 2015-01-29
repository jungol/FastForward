# == Schema Information
#
# Table name: upvotes
#
#  id         :integer          not null, primary key
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer
#

require 'rails_helper'

RSpec.describe Upvote, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
