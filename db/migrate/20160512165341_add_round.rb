class AddRound < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string  "topic"
    end
    add_column :songs, :round_id, :integer
    add_column :guesses, :round_id, :integer
  end
end
