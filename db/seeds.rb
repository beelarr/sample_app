require 'faker'

User.create!(name: 'Bryon Larrance',
             email: 'bryonl@me.com',
             password: '2013258',
             password_confirmation: '2013258',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)


10.times do |n|
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


  users = User.order(:created_at).take(6)
  1.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end


