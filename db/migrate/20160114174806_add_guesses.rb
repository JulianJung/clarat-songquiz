class AddGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer "song_id"
      t.string "username"
      t.string "guesser_name"
      # guesser_user_id
      # guessed_user_id
    end
  end
end
