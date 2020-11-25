# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Catering.destroy_all

catering = Catering.new(title: "Cocktail Training", description: "Very good catering service",
price: 199, address: "Block Street")
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
catering.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
catering.user_id = 1
catering.save

