User.create!(username: "Savingman",
             email:    "save@saving.com",
             password:              "setuyaku",
             password_confirmation: "setuyaku")

49.times do |n|
  username = Faker::Name.name
  email = "example-#{n+1}@saving.com"
  password = "password"
  User.create!(username: username,
               email:    email,
               password:              password,
               password_confirmation: password)
end