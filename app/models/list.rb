# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  title         :string
#  upvotes_count :integer
#

class List < ActiveRecord::Base
  has_many :item_lists
  has_many :items, :through => :item_lists


  def date
    self.created_at.strftime('%B %d')
  end

end
