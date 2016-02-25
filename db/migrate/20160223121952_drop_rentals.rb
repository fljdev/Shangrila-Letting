class DropRentals < ActiveRecord::Migration
  def change
	drop_table :rentals
  end
end
