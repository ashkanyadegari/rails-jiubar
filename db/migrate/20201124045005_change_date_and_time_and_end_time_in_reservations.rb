class ChangeDateAndTimeAndEndTimeInReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :date
    add_column :reservations, :date, :date
    remove_column :reservations, :time
    add_column :reservations, :time, :time
    remove_column :reservations, :EndTime
    add_column :reservations, :end_time, :time
  end
end
