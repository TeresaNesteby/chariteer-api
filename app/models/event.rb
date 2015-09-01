class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :categories

  has_many :participants
  has_many :volunteers, :through => :participants
end
