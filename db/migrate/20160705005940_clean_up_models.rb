class CleanUpModels < ActiveRecord::Migration
  def change
  	add_column :events, :action_type, :integer
  	add_column :campaigns, :action_type, :integer
  	add_column :conversations, :action_type, :integer
   	remove_column :events, :type, :integer
  	remove_column :campaigns, :type, :integer
  	remove_column :conversations, :type, :integer
  end
end
