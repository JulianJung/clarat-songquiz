class AddUserIds < ActiveRecord::Migration
  def change
    add_column :songs, :user_id, :integer
    add_column :rounds, :user_id, :integer
    add_column :guesses, :user_id, :integer
    add_column :users, :username, :string
    remove_column :songs, :username, :string
  end
end
