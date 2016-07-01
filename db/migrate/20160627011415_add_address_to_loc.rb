class AddAddressToLoc < ActiveRecord::Migration
  def change
    add_column :events, :address, :string
    add_column :campaigns, :address, :string
    add_column :conversations, :address, :string
  end
end
