# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  upvotes_count :integer          default("0")
#  list_id       :integer
#

require 'rails_helper'

RSpec.describe Item, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
