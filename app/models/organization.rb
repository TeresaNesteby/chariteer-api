class Organization < ActiveRecord::Base
  has_secure_password
  has_many :events
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

end
