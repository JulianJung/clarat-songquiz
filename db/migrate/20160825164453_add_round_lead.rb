class AddRoundLead < ActiveRecord::Migration
  def change
    add_column :users, :round_lead, :boolean, default: false
  end
end
