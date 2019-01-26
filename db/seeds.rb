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

# Saving_item.create!(itemname: "タバコ",
#                     categoryid: "1",
#                     date: "2019/1/1",
#                     amount: "500",
#                     memo: "今日も1箱我慢した")

# users = User.order(:cerated_at).take(6)
# 10.times do
#   memo = Faker::Lorem.sentence(5)
#   users.each { |user| user.saving_items.create!(memo: memo) }
# end