# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

House.destroy_all

photo1 = House.create!(name: 'Belle', address: 'Monaco', price: 100_000, rating: nil)
file = URI.open('https://pbs.twimg.com/media/CbbyBFqXIAM9pKu?format=jpg&name=medium')
photo1.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')

photo2 = House.create!(name: 'Marguerite', address: 'London', price: 200_000, rating: nil)
file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/suburban-house-royalty-free-image-1584972559.jpg')
photo2.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')

photo3 = House.create!(name: 'Fleur', address: 'Paris', price: 250_000, rating: nil)
file = URI.open('https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
photo3.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')

photo4 = House.create!(name: 'Prune', address: 'Dublin', price: 300_000, rating: nil)
file = URI.open('https://static.dezeen.com/uploads/2020/02/house-in-the-landscape-niko-arcjitect-architecture-residential-russia-houses-khurtin_dezeen_2364_hero-852x479.jpg')
photo4.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')

photo5 = House.create!(name: 'Poire', address: 'New York', price: 400_000, rating: nil)
file = URI.open('https://www.iconichouses.org/foto/houses/duldeck.jpg')
photo5.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')

photo6 = House.create!(name: 'Ruby', address: 'Nice', price: 500_000, rating: nil)
file = URI.open('https://www.iconichouses.org/foto/houses-middel/haus-schminke.jpg')
photo6.photo.attach(io: file, filename: 'photo.jpeg', content_type: 'image/jpg')
