# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Booking.destroy_all
Bike.destroy_all
User.destroy_all

denis = User.create(email: "denis@gmail.com", password: "denis123")
alex = User.create(email: "alex@gmail.com", password: "alex123")
lauren = User.create(email: "lauren@gmail.com", password: "lauren123")
yemmy = User.create(email: "yemmy@gmail.com", password: "yemmy123")
users = [denis, alex, lauren, yemmy]
bikepictures = ["isert url's"]

locations = ["Berlin", "Hamburg", "Munich"]

puts 'Creating 10 fake bikes...'
30.times do
  bike = Bike.new(
    title: Faker::Company.name,
    price: rand(10..50),
    address: locations.sample
    # insert pull picture from bp when new bike is created.
    # if Bike.new = true
    #   # get from bikepictures
    # end
  )
  bike.user = users.sample
  bike.save!

  puts 'Creating a fake booking'
  1.times do
    booking = Booking.create(
      user: users.sample,
      bike: bike
    )
  end
end

puts 'Finished!'
