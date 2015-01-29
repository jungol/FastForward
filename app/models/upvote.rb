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

class Upvote < ActiveRecord::Base

  belongs_to :list, counter_cache: true

end
