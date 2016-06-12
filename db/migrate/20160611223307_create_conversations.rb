class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :title
      t.text :description
      t.string :link
      t.boolean :in_house

      t.timestamps null: false
    end
  end
end
