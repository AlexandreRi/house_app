# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
House.create(name: 'Belle', address: 'Monaco', price: 100_000, rating: nil)
House.create(name: 'Marguerite', address: 'London', price: 200_000, rating: nil)
House.create(name: 'Fleur', address: 'Paris', price: 250_000, rating: nil)
House.create(name: 'Prune', address: 'Dublin', price: 300_000, rating: nil)
House.create(name: 'Poire', address: 'New York', price: 400_000, rating: nil)
House.create(name: 'Ruby', address: 'Nice', price: 500_000, rating: nil)
