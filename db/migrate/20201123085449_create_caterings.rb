class CreateCaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :caterings do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :address
      t.string :longitude
      t.string :latitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
