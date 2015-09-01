class Volunteer < ActiveRecord::Base
  has_secure_password
  has_many :participants
  has_many :events, :through => :participants

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
end
