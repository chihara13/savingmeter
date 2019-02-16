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

Category.create!(category_name: "趣味")
Category.create!(category_name: "日用品")
Category.create!(category_name: "交通費")
Category.create!(category_name: "嗜好品")
Category.create!(category_name: "食費")
Category.create!(category_name: "飲料")
Category.create!(category_name: "衣服")
Category.create!(category_name: "生活費")
Category.create!(category_name: "通信費")
Category.create!(category_name: "その他")

users = User.all
user  = users.first
following = users[2..30]
followers = users[3..20]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }