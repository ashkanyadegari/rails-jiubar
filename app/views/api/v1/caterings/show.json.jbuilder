    json.extract! @catering, :id, :title, :description, :price, :address, :longitude, :latitude, :user_id
    json.photos @catering.photos.attachments.map { |photo| photo.key }
