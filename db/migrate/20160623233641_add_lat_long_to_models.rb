class AddLatLongToModels < ActiveRecord::Migration
  def change
    add_column :campaigns, :externalUrl, :string
    add_column :events, :externalUrl, :string

    add_column :campaigns, :latitude, :float
    add_column :campaigns, :longitude, :float

    add_column :events, :latitude, :float
    add_column :events, :longitude, :float

    add_column :conversations, :latitude, :float
    add_column :conversations, :longitude, :float
  end
end
