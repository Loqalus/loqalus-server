class AddUserIdListToAttendanceList < ActiveRecord::Migration
  def change
  	add_column :attendance_lists, :attendies, :integer, array: true, default: []
  end
end
