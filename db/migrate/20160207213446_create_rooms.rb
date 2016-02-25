class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.text :address
      t.float :rent_per_month
      t.float :deposit
      t.date :available_from
      t.date :available_to
      t.text :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
