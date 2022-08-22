# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 20 fake bikes...'
20.times do
  bike = Bike.new(
    title: Faker::Company.name,
    price: rand(10..20),
    user_id: 1
  )
  bike.save!
end
puts 'Finished!'
