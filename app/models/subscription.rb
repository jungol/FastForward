class Subscription < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
  validates :list_id, presence: true
  validates :user_id, presence: true
end
