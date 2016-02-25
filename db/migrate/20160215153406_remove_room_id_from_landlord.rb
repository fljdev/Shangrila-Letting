class RemoveRoomIdFromLandlord < ActiveRecord::Migration
  def change
    remove_column :landlords, :room_id, :integer
  end
end
