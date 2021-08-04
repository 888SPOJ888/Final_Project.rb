# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |i|
    

    users = User.new(
        name:  Faker::Name.name_with_middle,
        email: Faker::Internet.email
    )

    users.save
    
end
10.times do |i|
    Level.create(name: "Level ##{i}")
end

10.times do |i|
    Course.create(name: "Course ##{i}")
end

10.times do |i|
    Company.create(name: "Company ##{i}")
end

AdminUser.create!(email: 'administrate@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

