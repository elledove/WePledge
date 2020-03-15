# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.destroy_all
Donation.destroy_all

Organization.create(name: 'The Kanagroo Sanctuary', location: 'Alice Springs, Australia', animal: 'kangaroos')
Organization.create(name: 'Wildlife Sanctuary', location: 'Somewhere, India', animal: 'multiple')
Organization.create(name: 'Black Jaguar, White Tiger', location: 'Somewhere, Mexico', animal: 'big cats')
Organization.create(name: 'Save The Whales', location: 'Multiple locations', animal: 'whales')
Organization.create(name: 'Ric O Barrys Dolphin Project', location: '171 Pier Ave Box 234 Santa Monica, CA 90405', animal: 'dolphins')
Organization.create(name: 'Oceanic Preservation Society', location: '336 Bon Air Center #384 Greenbrae, California 94904', animal: 'marine')
Organization.create(name: 'American Cetacean Society', location: 'PO Box 51691 Pacific Grove, CA 93950', animal: 'porpoise')
Organization.create(name: 'The Orangutan Project', location: '2461 Santa Monica Blvd #828 SANTA MONICA, CA 90404', animal: 'orangutans')
Organization.create(name: 'The Bethlehem Animal Shelter', location: 'West Bank, Bethlehem', animal: 'dogs')
Organization.create(name: 'The Bethlehem Animal Shelter', location: 'West Bank, Bethlehem', animal: 'cats')
Organization.create(name: 'Born Free USA', location: '8737 Colesville Road, Suite 715, Silver Spring, MD 20910', animal: 'monkeys')
Organization.create(name: 'Pine Rivers Koala Care Association', location: 'Po Box 145 Strathpine Qld 4500', animal: 'koalas')
Organization.create(name: 'African Fund for Endangered Wildlife', location: 'P.O. Box 15124-00509 Nairobi, Kenya', animal: 'giraffes')










Donation.create(date:'2020/11/12', description: 'This ones for the dogs', amount: 25.00)
Donation.create(date: '2020/3/8', description: 'This ones for the whale', amount: 55.00)

