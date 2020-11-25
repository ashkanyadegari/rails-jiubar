class ChangeLatitudeColumnInCaterings < ActiveRecord::Migration[6.0]
  def change
    remove_column :caterings, :latitude, :string
    add_column :caterings, :latitude, :float
  end
end
