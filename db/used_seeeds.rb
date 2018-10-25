# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Stylist.create(
#   {
#     name: "Jaime Anglero",
#     phone_number: "(111) 555-5555",
#     email: "jaime.anglero@gmail.com",
#     address: "11 Broadway, New York, NY 10004",
#     years_experience: 20,
#     start_time: "09:00 AM",
#     end_time: "05:30 PM",
#     monday: true,
#     tuesday: true,
#     wednesday:true,
#     thursday: true,
#     friday: true,
#     saturday: false,
#     sunday: false
#   }
# )
#
# Stylist.create(
#   {
#     name: "Mike Cheng",
#     phone_number: "(999) 555-5555",
#     email: "mikes.cutz@msn.com",
#     address: "30 Park Pl, New York, NY 10007",
#     years_experience: 5,
#     start_time: "11:00 AM",
#     end_time: "09:00 PM",
#     monday: false,
#     tuesday: false,
#     wednesday:false,
#     thursday: false,
#     friday: false,
#     saturday: true,
#     sunday: true
#   }
# )
#
# puts "Made some barbers..."
#
# Duration.create(length: "0 hr. 30 min.") # id: 1
# Duration.create(length: "1 hr. 00 min.") # id: 2
# Duration.create(length: "1 hr. 30 min.") # id: 3
# Duration.create(length: "2 hr. 00 min.") # id: 4
# Duration.create(length: "2 hr. 30 min.") # id: 5
# Duration.create(length: "3 hr. 00 min.") # id: 6
# Duration.create(length: "3 hr. 30 min.") # id: 7
# Duration.create(length: "4 hr. 00 min.") # id: 8
# Duration.create(length: "4 hr. 30 min.") # id: 9
# Duration.create(length: "5 hr. 00 min.") # id: 10
# Duration.create(length: "5 hr. 30 min.") # id: 11
# Duration.create(length: "6 hr. 00 min.") # id: 12
# Duration.create(length: "6 hr. 30 min.") # id: 13
# Duration.create(length: "7 hr. 00 min.") # id: 14
# Duration.create(length: "7 hr. 30 min.") # id: 15
# Duration.create(length: "8 hr. 00 min.") # id: 16
#
# puts "Made duration times from 0 hr. 30 min. to 8 hr. 00 min."
#
# Service.create(title: "Men's Cut")          # id: 1
# Service.create(title: "Razoring")           # id: 2
# Service.create(title: "Line Up")            # id: 3
# Service.create(title: "Edge Up")            # id: 4
# Service.create(title: "Design")             # id: 5
# Service.create(title: "Buzz Cut")           # id: 6
# Service.create(title: "Fade")               # id: 7
# Service.create(title: "Shave")              # id: 8
# Service.create(title: "Sideburn Shave")     # id: 9
# Service.create(title: "Mustache Trim")      # id: 10
# Service.create(title: "Beard Trim ")        # id: 11
# Service.create(title: "Hot Towel Service")  # id: 12
# Service.create(title: "Eye Brows")          # id: 13
#
# puts "Made some services"
#
# # Jaime Anglero's (id: 1) Services
#
# # Men's Cut, 0 hr. 30 min.
# StylistService.create(stylist_id: 1, service_id: 1, duration_id: 2)
# # Razoring, 30 min
# StylistService.create(stylist_id: 1, service_id: 2, duration_id: 1)
# # Edge Up, 30 min
# StylistService.create(stylist_id: 1, service_id: 4, duration_id: 1)
# # Design, 1 hr 30 min
# StylistService.create(stylist_id: 1, service_id: 5, duration_id: 3)
# # Fade, 1 hr
# StylistService.create(stylist_id: 1, service_id: 7, duration_id: 2)
# # Beard Trim, 30 min
# StylistService.create(stylist_id: 1, service_id: 11, duration_id: 1)
# # Hot Towel Service, 1 hr
# StylistService.create(stylist_id: 1, service_id: 12, duration_id: 2)
#
# # Mike Cheng's (id: 2) Services
#
# # Buzz Cut, 1 hr
# StylistService.create(stylist_id: 2, service_id: 6, duration_id: 4)
#
# # Eyebrows, 1 hr
# StylistService.create(stylist_id: 2, service_id: 13, duration_id: 2)
#
#
# BlockTable.create(start_time_str: "00:00:00", start_time_int: 0, start_time_display: "12:00 AM", end_time_display: "12:30 AM")
#
# BlockTable.create(start_time_str: "00:30:00", start_time_int: 1800, start_time_display: "12:30 AM", end_time_display: "01:00 AM")
#
# BlockTable.create(start_time_str: "01:00:00", start_time_int: 3600, start_time_display: "01:00 AM", end_time_display: "01:30 AM")
#
# BlockTable.create(start_time_str: "01:30:00", start_time_int: 5400, start_time_display: "01:30 AM", end_time_display: "02:00 AM")
#
# BlockTable.create(start_time_str: "02:00:00", start_time_int: 7200, start_time_display: "02:00 AM", end_time_display: "02:30 AM")
#
# BlockTable.create(start_time_str: "02:30:00", start_time_int: 9000, start_time_display: "02:30 AM", end_time_display: "03:00 AM")
#
# BlockTable.create(start_time_str: "03:00:00", start_time_int: 10800, start_time_display: "03:00 AM", end_time_display: "03:30 AM")
#
# BlockTable.create(start_time_str: "03:30:00", start_time_int: 12600, start_time_display: "03:30 AM", end_time_display: "04:00 AM")
#
# BlockTable.create(start_time_str: "04:00:00", start_time_int: 14400, start_time_display: "04:00 AM", end_time_display: "04:30 AM")
#
# BlockTable.create(start_time_str: "04:30:00", start_time_int: 16200, start_time_display: "04:30 AM", end_time_display: "05:00 AM")
#
# BlockTable.create(start_time_str: "05:00:00", start_time_int: 18000, start_time_display: "05:00 AM", end_time_display: "05:30 AM")
#
# BlockTable.create(start_time_str: "05:30:00", start_time_int: 19800, start_time_display: "05:30 AM", end_time_display: "06:00 AM")
#
# BlockTable.create(start_time_str: "06:00:00", start_time_int: 21600, start_time_display: "06:00 AM", end_time_display: "06:30 AM")
#
# BlockTable.create(start_time_str: "06:30:00", start_time_int: 23400, start_time_display: "06:30 AM", end_time_display: "07:00 AM")
#
# BlockTable.create(start_time_str: "07:00:00", start_time_int: 25200, start_time_display: "07:00 AM", end_time_display: "07:30 AM")
#
# BlockTable.create(start_time_str: "07:30:00", start_time_int: 27000, start_time_display: "07:30 AM", end_time_display: "08:00 AM")
#
# BlockTable.create(start_time_str: "08:00:00", start_time_int: 28800, start_time_display: "08:00 AM", end_time_display: "08:30 AM")
#
# BlockTable.create(start_time_str: "08:30:00", start_time_int: 30600, start_time_display: "08:30 AM", end_time_display: "09:00 AM")
#
# BlockTable.create(start_time_str: "09:00:00", start_time_int: 32400, start_time_display: "09:00 AM", end_time_display: "09:30 AM")
#
# BlockTable.create(start_time_str: "09:30:00", start_time_int: 34200, start_time_display: "09:30 AM", end_time_display: "10:00 AM")
#
# BlockTable.create(start_time_str: "10:00:00", start_time_int: 36000, start_time_display: "10:00 AM", end_time_display: "10:30 AM")
#
# BlockTable.create(start_time_str: "10:30:00", start_time_int: 37800, start_time_display: "10:30 AM", end_time_display: "11:00 AM")
#
# BlockTable.create(start_time_str: "11:00:00", start_time_int: 39600, start_time_display: "11:00 AM", end_time_display: "11:30 AM")
#
# BlockTable.create(start_time_str: "11:30:00", start_time_int: 41400, start_time_display: "11:30 AM", end_time_display: "12:00PM")
#
# BlockTable.create(start_time_str: "12:00:00", start_time_int: 43200, start_time_display: "12:00 PM", end_time_display: "12:30 PM")
#
# BlockTable.create(start_time_str: "12:30:00", start_time_int: 45000, start_time_display: "12:30 PM", end_time_display: "01:00 PM")
#
# BlockTable.create(start_time_str: "13:00:00", start_time_int: 46800, start_time_display: "01:00 PM", end_time_display: "01:30 PM")
#
# BlockTable.create(start_time_str: "13:30:00", start_time_int: 48600, start_time_display: "01:30 PM", end_time_display: "02:00 PM")
#
# BlockTable.create(start_time_str: "14:00:00", start_time_int: 50400, start_time_display: "02:00 PM", end_time_display: "02:30 PM")
#
# BlockTable.create(start_time_str: "14:30:00", start_time_int: 52200, start_time_display: "02:30 PM", end_time_display: "03:00 PM")
#
# BlockTable.create(start_time_str: "15:00:00", start_time_int: 54000, start_time_display: "03:00 PM", end_time_display: "03:30 PM")
#
# BlockTable.create(start_time_str: "15:30:00", start_time_int: 55800, start_time_display: "03:30 PM", end_time_display: "04:00 PM")
#
# BlockTable.create(start_time_str: "16:00:00", start_time_int: 57600, start_time_display: "04:00 PM", end_time_display: "04:30 PM")
#
# BlockTable.create(start_time_str: "16:30:00", start_time_int: 59400, start_time_display: "04:30 PM", end_time_display: "05:00 PM")
#
# BlockTable.create(start_time_str: "17:00:00", start_time_int: 61200, start_time_display: "05:00 PM", end_time_display: "05:30 PM")
#
# BlockTable.create(start_time_str: "17:30:00", start_time_int: 63000, start_time_display: "05:30 PM", end_time_display: "06:00 PM")
#
# BlockTable.create(start_time_str: "18:00:00", start_time_int: 64800, start_time_display: "06:00 PM", end_time_display: "06:30 PM")
#
# BlockTable.create(start_time_str: "18:30:00", start_time_int: 66600, start_time_display: "06:30 PM", end_time_display: "07:00 PM")
#
# BlockTable.create(start_time_str: "19:00:00", start_time_int: 68400, start_time_display: "07:00 PM", end_time_display: "07:30 PM")
#
# BlockTable.create(start_time_str: "19:30:00", start_time_int: 70200, start_time_display: "07:30 PM", end_time_display: "08:00 PM")
#
# BlockTable.create(start_time_str: "20:00:00", start_time_int: 72000, start_time_display: "08:00 PM", end_time_display: "08:30 PM")
#
# BlockTable.create(start_time_str: "20:30:00", start_time_int: 73800, start_time_display: "08:30 PM", end_time_display: "09:00 PM")
#
# BlockTable.create(start_time_str: "21:00:00", start_time_int: 75600, start_time_display: "09:00 PM", end_time_display: "09:30 PM")
#
# BlockTable.create(start_time_str: "21:30:00", start_time_int: 77400, start_time_display: "09:30 PM", end_time_display: "10:00 PM")
#
# BlockTable.create(start_time_str: "22:00:00", start_time_int: 79200, start_time_display: "10:00 PM", end_time_display: "10:30 PM")
#
# BlockTable.create(start_time_str: "22:30:00", start_time_int: 81000, start_time_display: "10:30 PM", end_time_display: "11:00 PM")
#
# BlockTable.create(start_time_str: "23:00:00", start_time_int: 82800, start_time_display: "11:00 PM", end_time_display: "11:30 PM")
#
# BlockTable.create(start_time_str: "23:30:00", start_time_int: 84600, start_time_display: "11:30 PM", end_time_display: "12:00AM")
#
# puts "Made block table for time scheduling"

# Picture.create(stylist_id: 1, url: "http://thebarberhausny.com/resources/1.jpg")
#
# Picture.create(stylist_id: 1, url: "http://thebarberhausny.com/resources/5.jpg")
#
# Picture.create(stylist_id: 1, url: "http://thebarberhausny.com/resources/11.jpg")
#
# Picture.create(stylist_id: 1, url: "https://i.imgur.com/gbwG0K7.jpg")
#
# Picture.create(stylist_id: 1, url: "https://i.imgur.com/LHc0aRa.jpg")
#
# Picture.create(stylist_id: 1, url: "https://i.imgur.com/ZdayX23.jpg")

# puts "made Stylist 1's pictures"


# Picture.create(stylist_id: 2, url: "https://cdn.shopify.com/s/files/1/0434/4749/files/JT_Hair_3_grande.jpg?v=1520929848")
#
# Picture.create(stylist_id: 2, url: "https://media.gq.com/photos/5abbed5b12e5c32eb07d5675/master/w_800/buzz-cut-Zayn-Malik.jpg")
#
# Picture.create(stylist_id: 2, url: "https://gq-images.condecdn.net/image/R6m9MR9qQq0/crop/1020/f/Justin-Bieber-2010-GQ-28Feb17_getty_b.jpg")

# Made Stylist 2's pictures
