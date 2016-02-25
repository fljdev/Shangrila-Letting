class RemovePasswordDigentFromLandlord < ActiveRecord::Migration
  def change
    remove_column :landlords, :password_digest, :string
  end
end
