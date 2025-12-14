class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.datetime :visited_at, null: false
      t.decimal :rating, precision: 2, scale: 1, null: false
      t.string :solo_customer_level, null: false, limit: 20
      t.string :casual_level, null: false, limit: 20
      t.string :noise_level, null: false, limit: 20
      t.string :counter_seat, null: false, limit: 10
      t.string :crowdedness_level, null: false, limit: 20
      t.string :comment, limit: 1000

      t.timestamps
    end

    add_index :posts, :visited_at
    add_index :posts, :rating
    add_index :posts, [:shop_id, :created_at]
  end
end
