class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :room_address
      t.string :lodger_name
      t.date :lease_start
      t.date :lease_end

      t.timestamps null: false
    end
  end
end
