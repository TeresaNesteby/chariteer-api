class Volunteer < ActiveRecord::Base
  has_secure_password
  has_many :events
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
end
