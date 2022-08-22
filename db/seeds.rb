# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.destroy_all
Bike.destroy_all
Booking.destroy_all

user = User.create(email: "blah@blah.com", password: "blah123")

puts 'Creating 20 fake bikes...'
20.times do
  bike = Bike.new(
    title: Faker::Company.name,
    price: rand(10..20)
  )
  bike.user = user
  bike.save!
end
puts 'Finished!'
