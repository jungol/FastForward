# == Schema Information
#
# Table name: list_collections
#
#  id            :integer          not null, primary key
#  list_id       :integer
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe ListCollection, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
