class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :reservations, :status, :boolean, default: false
  end
end
