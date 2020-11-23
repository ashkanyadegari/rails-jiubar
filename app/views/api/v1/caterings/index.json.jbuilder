json.caterings do
  json.array! @caterings do |catering|
    json.extract! catering, :id, :title, :description, :price, :address, :longitude, :latitude, :user_id
    json.photos catering.photos.attachments.map { |photo| photo.key }
  end
end


  # create_table "caterings", force: :cascade do |t|
  #   t.string "title"
  #   t.string "description"
  #   t.integer "price"
  #   t.string "address"
  #   t.string "longitude"
  #   t.string "latitude"
  #   t.bigint "user_id", null: false
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["user_id"], name: "index_caterings_on_user_id"
  # end
