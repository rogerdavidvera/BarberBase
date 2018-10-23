# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Stylist.create(name: "Roger Vera", phone_number: "(123) 555-5555", address: "123 Avenue A, New York, NY", email: "barber.base.stylist.test01@gmail.com", years_experience: 20, stylist_barber: true)
#
# Stylist.create(name: "Shawna Davis", phone_number: "(789) 555-5555", address: "789 Avenue Z, New York, NY", email: "barber.base.stylist.test02@gmail.com", years_experience: 25, stylist_barber: false)

# Stylist.create(name: "Shawna Davis", phone_number: "(789) 555-5555", address: "789 Avenue Z, New York, NY", email: "barber.base.stylist.test02@gmail.com", years_experience: 25, start_time: false)
#
# puts "Made some stylists..."

Client.create(name: "Billy Bob", phone_number: "(000) 000-0000", email: "barber.base.client.test03@gmail.com")

puts "Made some clients..."

Duration.create(length: "0 hr. 30 min.")
Duration.create(length: "1 hr. 00 min.")
Duration.create(length: "1 hr. 30 min.")
Duration.create(length: "2 hr. 00 min.")
Duration.create(length: "2 hr. 30 min.")
Duration.create(length: "3 hr. 00 min.")
Duration.create(length: "3 hr. 30 min.")
Duration.create(length: "4 hr. 00 min.")
Duration.create(length: "4 hr. 30 min.")
Duration.create(length: "5 hr. 00 min.")
Duration.create(length: "5 hr. 30 min.")
Duration.create(length: "6 hr. 00 min.")
Duration.create(length: "6 hr. 30 min.")
Duration.create(length: "7 hr. 00 min.")
Duration.create(length: "7 hr. 30 min.")
Duration.create(length: "8 hr. 00 min.")

puts "Made duration times from 0 hr. 30 min. to 8 hr. 00 min."

#
#
BlockTable.create(start_time_str: "00:00:00", start_time_int: 0, start_time_display: "12:00 AM", end_time_display: "12:30 AM")
BlockTable.create(start_time_str: "00:30:00", start_time_int: 1800, start_time_display: "12:30 AM", end_time_display: "01:00 AM")
BlockTable.create(start_time_str: "01:00:00", start_time_int: 3600, start_time_display: "01:00 AM", end_time_display: "01:30 AM")
BlockTable.create(start_time_str: "01:30:00", start_time_int: 5400, start_time_display: "01:30 AM", end_time_display: "02:00 AM")
BlockTable.create(start_time_str: "02:00:00", start_time_int: 7200, start_time_display: "02:00 AM", end_time_display: "02:30 AM")
BlockTable.create(start_time_str: "02:30:00", start_time_int: 9000, start_time_display: "02:30 AM", end_time_display: "03:00 AM")
BlockTable.create(start_time_str: "03:00:00", start_time_int: 10800, start_time_display: "03:00 AM", end_time_display: "03:30 AM")
BlockTable.create(start_time_str: "03:30:00", start_time_int: 12600, start_time_display: "03:30 AM", end_time_display: "04:00 AM")
BlockTable.create(start_time_str: "04:00:00", start_time_int: 14400, start_time_display: "04:00 AM", end_time_display: "04:30 AM")
BlockTable.create(start_time_str: "04:30:00", start_time_int: 16200, start_time_display: "04:30 AM", end_time_display: "05:00 AM")
BlockTable.create(start_time_str: "05:00:00", start_time_int: 18000, start_time_display: "05:00 AM", end_time_display: "05:30 AM")
BlockTable.create(start_time_str: "05:30:00", start_time_int: 19800, start_time_display: "05:30 AM", end_time_display: "06:00 AM")
BlockTable.create(start_time_str: "06:00:00", start_time_int: 21600, start_time_display: "06:00 AM", end_time_display: "06:30 AM")
BlockTable.create(start_time_str: "06:30:00", start_time_int: 23400, start_time_display: "06:30 AM", end_time_display: "07:00 AM")
BlockTable.create(start_time_str: "07:00:00", start_time_int: 25200, start_time_display: "07:00 AM", end_time_display: "07:30 AM")
BlockTable.create(start_time_str: "07:30:00", start_time_int: 27000, start_time_display: "07:30 AM", end_time_display: "08:00 AM")
BlockTable.create(start_time_str: "08:00:00", start_time_int: 28800, start_time_display: "08:00 AM", end_time_display: "08:30 AM")
BlockTable.create(start_time_str: "08:30:00", start_time_int: 30600, start_time_display: "08:30 AM", end_time_display: "09:00 AM")
BlockTable.create(start_time_str: "09:00:00", start_time_int: 32400, start_time_display: "09:00 AM", end_time_display: "09:30 AM")
BlockTable.create(start_time_str: "09:30:00", start_time_int: 34200, start_time_display: "09:30 AM", end_time_display: "10:00 AM")
BlockTable.create(start_time_str: "10:00:00", start_time_int: 36000, start_time_display: "10:00 AM", end_time_display: "10:30 AM")
BlockTable.create(start_time_str: "10:30:00", start_time_int: 37800, start_time_display: "10:30 AM", end_time_display: "11:00 AM")
BlockTable.create(start_time_str: "11:00:00", start_time_int: 39600, start_time_display: "11:00 AM", end_time_display: "11:30 AM")
BlockTable.create(start_time_str: "11:30:00", start_time_int: 41400, start_time_display: "11:30 AM", end_time_display: "12:00PM")
BlockTable.create(start_time_str: "12:00:00", start_time_int: 43200, start_time_display: "12:00 PM", end_time_display: "12:30 PM")
BlockTable.create(start_time_str: "12:30:00", start_time_int: 45000, start_time_display: "12:30 PM", end_time_display: "01:00 PM")
BlockTable.create(start_time_str: "13:00:00", start_time_int: 46800, start_time_display: "01:00 PM", end_time_display: "01:30 PM")
BlockTable.create(start_time_str: "13:30:00", start_time_int: 48600, start_time_display: "01:30 PM", end_time_display: "02:00 PM")
BlockTable.create(start_time_str: "14:00:00", start_time_int: 50400, start_time_display: "02:00 PM", end_time_display: "02:30 PM")
BlockTable.create(start_time_str: "14:30:00", start_time_int: 52200, start_time_display: "02:30 PM", end_time_display: "03:00 PM")
BlockTable.create(start_time_str: "15:00:00", start_time_int: 54000, start_time_display: "03:00 PM", end_time_display: "03:30 PM")
BlockTable.create(start_time_str: "15:30:00", start_time_int: 55800, start_time_display: "03:30 PM", end_time_display: "04:00 PM")
BlockTable.create(start_time_str: "16:00:00", start_time_int: 57600, start_time_display: "04:00 PM", end_time_display: "04:30 PM")
BlockTable.create(start_time_str: "16:30:00", start_time_int: 59400, start_time_display: "04:30 PM", end_time_display: "05:00 PM")
BlockTable.create(start_time_str: "17:00:00", start_time_int: 61200, start_time_display: "05:00 PM", end_time_display: "05:30 PM")
BlockTable.create(start_time_str: "17:30:00", start_time_int: 63000, start_time_display: "05:30 PM", end_time_display: "06:00 PM")
BlockTable.create(start_time_str: "18:00:00", start_time_int: 64800, start_time_display: "06:00 PM", end_time_display: "06:30 PM")
BlockTable.create(start_time_str: "18:30:00", start_time_int: 66600, start_time_display: "06:30 PM", end_time_display: "07:00 PM")
BlockTable.create(start_time_str: "19:00:00", start_time_int: 68400, start_time_display: "07:00 PM", end_time_display: "07:30 PM")
BlockTable.create(start_time_str: "19:30:00", start_time_int: 70200, start_time_display: "07:30 PM", end_time_display: "08:00 PM")
BlockTable.create(start_time_str: "20:00:00", start_time_int: 72000, start_time_display: "08:00 PM", end_time_display: "08:30 PM")
BlockTable.create(start_time_str: "20:30:00", start_time_int: 73800, start_time_display: "08:30 PM", end_time_display: "09:00 PM")
BlockTable.create(start_time_str: "21:00:00", start_time_int: 75600, start_time_display: "09:00 PM", end_time_display: "09:30 PM")
BlockTable.create(start_time_str: "21:30:00", start_time_int: 77400, start_time_display: "09:30 PM", end_time_display: "10:00 PM")
BlockTable.create(start_time_str: "22:00:00", start_time_int: 79200, start_time_display: "10:00 PM", end_time_display: "10:30 PM")
BlockTable.create(start_time_str: "22:30:00", start_time_int: 81000, start_time_display: "10:30 PM", end_time_display: "11:00 PM")
BlockTable.create(start_time_str: "23:00:00", start_time_int: 82800, start_time_display: "11:00 PM", end_time_display: "11:30 PM")
BlockTable.create(start_time_str: "23:30:00", start_time_int: 84600, start_time_display: "11:30 PM", end_time_display: "12:00AM")
