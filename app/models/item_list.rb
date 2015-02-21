# == Schema Information
#
# Table name: item_lists
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemList < ActiveRecord::Base
  belongs_to :item
  belongs_to :list

end
