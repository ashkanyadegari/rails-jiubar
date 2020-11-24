class AddEndTimeToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :EndTime, :string
  end
end
