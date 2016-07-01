class AddFkeyToModels < ActiveRecord::Migration
  def change
    add_column :events, :user_id, :string
    add_column :campaigns, :user_id, :string
    add_column :conversations, :user_id, :string

    remove_column :campaigns, :externalUrl, :string
    remove_column :events, :externalUrl, :string
  end
end
