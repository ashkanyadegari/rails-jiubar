class AddTitleToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :title, :string
  end
end
