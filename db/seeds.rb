require 'Random_data'

 # Create Users
 5.times do
   User.create!(
 # #3
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

 # Create wikis
 25.times do
 # #1
   Wiki.create!(
 # #2
     user:   users.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 wikis = Wiki.all
 
 puts "Seed finished"
 puts "#{Wiki.count} wikis created"