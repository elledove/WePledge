# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.destroy_all
Donation.destroy_all

Organization.create(name: 'The Kanagroo Sanctuary', location: 'Alice Springs, Australia', animal: 'kangaroo')
Organization.create(name: 'Wildlife Sanctuary', location: 'Somewhere, India', animal: 'multiple')
Organization.create(name: 'Black Jaguar, White Tiger', location: 'Somewhere, Mexico', animal: 'big cats')

Donation.create(date:'2020/11/12', description: 'This ones for the dogs', amount: 25.00)
Donation.create(date: '2020/3/8', description: 'This ones for the whale', amount: 55.00)

