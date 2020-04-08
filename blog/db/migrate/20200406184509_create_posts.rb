class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :ingredans
      t.integer :price
      t.string :genger

      t.timestamps
    end
  end
end
