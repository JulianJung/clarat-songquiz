class Guess < ActiveRecord::Base
  validates :guesser_name, presence: true
  validates :song_id, presence: true, numericality: true
  validates :username, presence: true
end
