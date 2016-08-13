class AddDateToEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :start_date, :date
  	add_column :events, :start_date, :datetime
  end
end
