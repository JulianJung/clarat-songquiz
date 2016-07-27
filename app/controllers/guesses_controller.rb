class GuessesController < ApplicationController
  def new
    @songs = Song.all.shuffle
    @usernames = @songs.map { |song| song.user.username }.shuffle
  end

  def create
    Song.count.times do |index|
      guess = Guess.new
      guess.guesser_name = params['guesser_name']
      guess.song_id = params["guess_song_#{index}"]
      guess.username = params["guess_user_#{index}"]
      guess.save!
    end
    redirect_to :guess_thanks
  end

  def thanks
  end
end
