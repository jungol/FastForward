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

require 'rails_helper'

RSpec.describe Collection, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
