class ChangeColumnForDescription < ActiveRecord::Migration[6.0]
  def change
    change_column :caterings, :description, :text
  end
end
