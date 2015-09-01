class Participant < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :event
end
