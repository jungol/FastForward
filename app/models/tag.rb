# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :lists, :through => :taggings

  def self.hash_of_checked_tags(tags)
    where(id: tags).collect { |tag| [tag.id, "true"]}
  end

end
