class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.string :link
      t.boolean :in_house
      t.integer :action_type
      t.string :user_id
      t.foat :latitude
      t.foat :longitude

      t.timestamps null: false
    end
  end
end
