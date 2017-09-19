require 'Random_data'
require 'faker'

 # Create Users
 1.times do
   User.create!(
 # #3
   email:    Faker::Internet.email,
   password: Faker::Lorem.sentence
   )
 end
 users = User.all

 # Create wikis
 1.times do
 # #1
   Wiki.create!(
 # #2
     user:   users.sample,
     title:  Faker::Lorem.word,
     body:   Faker::Lorem.sentence
   )
 end
 wikis = Wiki.all
 
 puts "Seed finished"
 puts "#{Wiki.count} wikis created"
 puts "#{User.count} users created"