# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string
#  upvotes_count :integer
#  curator       :string
#  curator_url   :string
#  view_count    :integer
#  published     :boolean
#

require 'rails_helper'

RSpec.describe List, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
