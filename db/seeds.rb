# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fakename = Faker::Company.name
contact = Faker::Internet.email

User.create(name: 'Guest', email: Faker::Internet.email)

20.times do
  @fakecomp = Company.create(name: Faker::Company.name, country: Faker::Address.country, user_id: Faker::Number.number(2), remote_logo_url: Faker::Company.logo)
  @musteng = @fakecomp.models.create(name: Faker::Name.first_name, start_price: "$#{Faker::Number.number(5)}")
  @musteng.configurations.create(name: Faker::Name.first_name, start_price: "$#{Faker::Number.number(5)}")
end
