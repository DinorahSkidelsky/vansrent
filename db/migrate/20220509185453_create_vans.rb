class CreateVans < ActiveRecord::Migration[6.1]
  def change
    create_table :vans do |t|
      t.text :description
      t.string :model
      t.string :brand
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
