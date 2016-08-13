class AddUserIdToAttendanceList < ActiveRecord::Migration
  def change
  	drop_table :RSVPs
  end
end
