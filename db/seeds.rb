# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Stylist.create(name: "Roger Vera", phone_number: "(123) 555-5555", address: "123 Avenue A, New York, NY", email: barber.base.stylist.test01@gmail.com, years_experience: 20, stylist_barber: true)

Stylist.create(name: "Shawna Davis", phone_number: "(789) 555-5555", address: "789 Avenue Z, New York, NY", email: barber.base.stylist.test02@gmail.com , years_experience: 25, stylist_barber: false)

puts "Made some stylists..."

Client.create(name: "Billy Bob", phone_number: "(000) 000-0000", address: "001 E. 33rd St, New York, NY", email: barber.base.client.test03@gmail.com)

puts "Made some clients..."


# TODO: Roger make seed data for duration 30m to 8 hours


# TODO: Shawna make seed data for services