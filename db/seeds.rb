require 'faker'

User.create!(name: 'Example User',
             email: 'example@example.com',
             password: 'foobar',
             password_confirmation: 'foobar')
100.times do |n|
  d = Faker::App.name
  name = Faker::Name.unique.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

