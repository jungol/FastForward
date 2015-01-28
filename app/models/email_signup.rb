# == Schema Information
#
# Table name: email_signups
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EmailSignup < ActiveRecord::Base
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, 
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
