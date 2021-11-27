# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
puts "Creating users..."
user1 = User.create!({
  email: "admin@gmail.com",
  password: "291ABASD932",
})
user1.save
user2 = User.create!({
  email: "usuario1@gmail.com",
  password: "291ABASD934",
})
user2.save
user3 = User.create!({
  email: "usuario2@gmail.com",
  password: "281ABASD932",
})
user3.save
  puts "Created #{user1.email}"
  puts "Created #{user2.email}"
  puts "Created #{user3.email}"
puts "Finished!"
