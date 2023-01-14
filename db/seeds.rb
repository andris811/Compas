require 'faker'

puts "Cleaning database..."
Trip.destroy_all

puts "Creating trips"

100.times do
  Trip.create!(
    trip_name: Faker::Dessert.topping,
    max_people: Faker::Number.between(from: 1, to: 30),
    description: Faker::Quote.matz,
    pets: Faker::Number.between(from: 0, to: 1),
    user_id: 1
  )
end

# puts "Cleaning messages..."
# Message.destroy_all
# puts "Creating messages"

# 50.times do
#   Message.create!(
#     trip_id: between(from: 1, to: 10),
#     user_id: 1,
#     comment: Faker::Quote.famous_last_words
#   )
# end
