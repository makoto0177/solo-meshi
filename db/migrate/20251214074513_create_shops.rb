class CreateShops < ActiveRecord::Migration[8.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false, limit: 100
      t.string :area, null: false, limit: 50
      t.string :category, null: false, limit: 20

      t.timestamps
    end

    add_index :shops, [:name, :area], unique: true
    add_index :shops, :category
  end
end
