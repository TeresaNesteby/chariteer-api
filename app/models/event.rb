class Event < ActiveRecord::Base
  belongs_to :organization
  belongs_to :volunteer
  has_many :categories
end
