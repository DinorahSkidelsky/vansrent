class AddPlaceToVans < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :place, :string
  end
end
