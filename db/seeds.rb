# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "test@test.com",
            :first_name => "Joe",
            :last_name => "Smith",
            :password => "testing",
            :password_confirmation => "testing")

@test_user_id = User.find_by_email "test@test.com"

(1..4).each  do|i|
  Listing.create(title: "My Pants ##{i}",
               description: "They have a small stain where I shat meself.",
               price: 10.0,
               primary_image_id: 1,
               user_id: @test_user_id)
end

(5..8).each do|i|
Listing.create(title: "My Shirt ##{i}",
               description: "My mum thinks it looks cool.",
               price: 30.0,
               primary_image_id: 2,
               user_id: @test_user_id)
end

