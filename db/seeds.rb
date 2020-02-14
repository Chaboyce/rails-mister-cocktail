# db/seeds.rb


require "open-uri"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")
cosmo = Cocktail.create(name: "Cosmo")

file_cosmo = URI.open("https://images.unsplash.com/photo-1575650772417-e6b418b0d106?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
cosmo.photo.attach(io: file_cosmo, filename: 'cosmo.jpg', content_type: 'image/jpg')

file_mojito = URI.open("https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
mojito.photo.attach(io: file_mojito, filename: 'mojito.jpg', content_type: 'image/jpg')
