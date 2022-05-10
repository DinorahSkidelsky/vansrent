class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :start_day, :start_time
    rename_column :reservations, :last_day, :end_time
  end
end
