class RemoveStartDayFromReservation < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :start_time, :string
    remove_column :reservations, :end_time, :string
  end
end
