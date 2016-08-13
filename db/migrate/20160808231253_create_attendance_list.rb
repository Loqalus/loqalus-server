class CreateAttendanceList < ActiveRecord::Migration
  def change
    create_table :attendance_lists do |t|
      t.integer :event_id
      t.timestamps null: false
    end
  end
end
