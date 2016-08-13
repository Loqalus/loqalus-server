class CreateRsvp < ActiveRecord::Migration
  def change
    create_table :RSVPs do |t|
      t.integer :user_id
      t.integer :attendance_list_id
      t.timestamps null: false
    end
  end
end
