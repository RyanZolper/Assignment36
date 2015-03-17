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

@fakecomp = Company.create(name: Faker::Company.name, country: 'Afghanistan', user_id: 24, remote_logo_url: 'http://d1bibpzgs6p18f.cloudfront.net/public_artwork/designofpro/745494/thumb/ferari-mustang.jpg')
@musteng = @fakecomp.models.create(name: 'musssteng', start_price: '$73 million')
@musteng.configurations.create(name: 'supah musteng', start_price: '$74 million')
