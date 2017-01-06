# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DatabaseCleaner.clean_with(:truncation, only: ['users', 'contents', 'addresses', 'boxes', 'box_contents'])

user1 = User.create!(name: 'Steve')
user2 = User.create!(name: 'Virginie')
user3 = User.create!(name: 'Fiona')
user4 = User.create!(name: 'Jenny')
user5 = User.create!(name: 'James')
user6 = User.create!(name: 'Fede')
user7 = User.create!(name: 'Sara')
user8 = User.create!(name: 'Tizi')
user9 = User.create!(name: 'Thomas')

content1 = Content.create(item: '1a')
content2 = Content.create(item: '1b')
content3 = Content.create(item: '1c')
content4 = Content.create(item: '2a')
content5 = Content.create(item: '2b')
content6 = Content.create(item: '2c')
content7 = Content.create(item: '3a')
content8 = Content.create(item: '3b')
content9 = Content.create(item: '3c')

address1 = Address.create(city: 'New York')
address2 = Address.create(city: 'Miami')

BoxContent.create!(code: 'gr100', content_id: content1.id)
BoxContent.create!(code: 'gr101', content_id: content2.id)

Order.create!(user_id: user1.id, content_id: content1.id, address_id: address1.id, delivered: true)
Order.create!(user_id: user1.id, content_id: content2.id, address_id: address1.id, delivered: true)
Order.create!(user_id: user1.id, content_id: content9.id, address_id: address1.id, delivered: true)
Order.create!(user_id: user2.id, content_id: content7.id, address_id: address2.id, delivered: true)
Order.create!(user_id: user2.id, content_id: content5.id, address_id: address2.id, delivered: true)
Order.create!(user_id: user2.id, content_id: content9.id, address_id: address2.id, delivered: true)
