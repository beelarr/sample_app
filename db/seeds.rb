require 'faker'

User.create!(name: 'Bryon Larrance',
             email: 'bryonl@me.com',
             password: '2013258',
             password_confirmation: '2013258',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)


100.times do |n|
  d = Faker::App.name
  name = Faker::Name.unique.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

