class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :reviews
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
