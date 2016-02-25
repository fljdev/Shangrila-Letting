class AddPasswordDigestToLodger < ActiveRecord::Migration
  def change
    add_column :lodgers, :password_digest, :string
  end
end
