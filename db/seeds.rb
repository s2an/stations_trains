# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

station1 = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false, station: station1)
Train.create!(train_type: "Monorail", capacity: 88, is_express: true, station: station1)
station2 = Station.create!(name: "Lexington Station", platform_count: 2 , food_stand: true)
Train.create!(train_type: "Three-Rail", capacity: 33, is_express: true, station: station2)
Train.create!(train_type: "Two-Rail", capacity: 44, is_express: false, station: station2)
