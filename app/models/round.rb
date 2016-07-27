class Round < ActiveRecord::Base
  validates :topic, presence: true
end
