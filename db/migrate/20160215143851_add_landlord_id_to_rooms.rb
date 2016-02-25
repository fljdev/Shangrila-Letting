class AddLandlordIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :landlord_id, :integer
  end
end
