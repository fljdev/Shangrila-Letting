class CreateLodgers < ActiveRecord::Migration
  def change
    create_table :lodgers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :references
      t.string :occupation
      t.string :sex

      t.timestamps null: false
    end
  end
end
