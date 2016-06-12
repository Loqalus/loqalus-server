class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.time :start_time
      t.date :start_date
      t.text :description
      t.string :link
      t.boolean :in_house

      t.timestamps null: false
    end
  end
end
