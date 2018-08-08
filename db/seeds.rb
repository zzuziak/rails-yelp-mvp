

Restaurant.delete_all
puts "Clearing database..."

5.times do
  Restaurant.create(
    name: Faker::Lovecraft.tome,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end

puts "Seeding..."
puts "Created #{Restaurant.count} records!"
