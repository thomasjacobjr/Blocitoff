require 'random_data'

N_ITEMS = 50
N_USERS = 50

# Create Users
N_USERS.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

# Create Items
N_ITEMS.times do
  Item.create!(
    user: users.sample,
    name: Faker::Hipster.sentence
  )
end


# Create a default user
user1 = User.new(email: "standard@test.com", password: "testtest")
user1.skip_confirmation!
user1.save

user2 = User.new(email: "premium@test.com", password: "testtest")
user2.skip_confirmation!
user2.save

user3 = User.new(email: "admin@test.com", password: "testtest")
user3.skip_confirmation!
user3.save



puts "Seed finished"
puts "#{N_ITEMS} additional items created"
puts "#{N_USERS} additional users created"
puts "Standard user created (standard@test.com/ testtest)"
puts "Premium user created (premium@test.com/ testtest)"
puts "Admin user created (admin@test.com/ testest)"
