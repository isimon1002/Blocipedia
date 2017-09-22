require 'Random_data'
require 'faker'

 # Create Users
 5.times do
   User.create!(
 # #3
   email:    Faker::Internet.email,
   password: Faker::Lorem.sentence
   )
 end
 users = User.all

 # Create public wikis
 15.times do
 # #1
   Wiki.create!(
 # #2
     user:   users.sample,
     title:  Faker::Lorem.word,
     body:   Faker::Lorem.sentence,
     private: false
   )
 end

 # Create private wikis
 10.times do
 # #1
   Wiki.create!(
 # #2
     user:   users.sample,
     title:  Faker::Lorem.word,
     body:   Faker::Lorem.sentence,
     private: true
   )
 end
 wikis = Wiki.all
 
 
 
 puts "Seed finished"
 puts "#{Wiki.count} wikis created"
 puts "#{User.count} users created"