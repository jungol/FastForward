# == Schema Information
#
# Table name: upvotes
#
#  id         :integer          not null, primary key
#  count      :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Upvote < ActiveRecord::Base

  belongs_to :item

end
