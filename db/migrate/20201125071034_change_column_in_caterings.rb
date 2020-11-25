class ChangeColumnInCaterings < ActiveRecord::Migration[6.0]
  def change
    remove_column :caterings, :longitude, :string
    add_column :caterings, :longitude, :float
  end
end
