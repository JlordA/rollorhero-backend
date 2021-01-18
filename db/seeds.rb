# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Sandwich.destroy_all
Deli.destroy_all
Like.destroy_all
Review.destroy_all
DeliSandwich.destroy_all

#### User Seed ####
james = User.create!(username: "James", password: "Password1234", neighborhood: "Bed Stuy", borough: "Brooklyn")
brian = User.create!(username: "Brian", password: "Luggage1234", neighborhood: "Greenpoint", borough: "Brooklyn")

#### Sandwich Seed ####

Sand1 = Sandwich.create!(name: "Vegan Cheeseburger", description: "delicious and healthy", price:  10, style:  "Burger", rating: 4)

Sand2 = Sandwich.create!(name: "Vegan Philly Cheesesteak", description:  "the bomb", price: 8, style:  "Cheesesteak", rating: 5)

Sand3 = Sandwich.create!(name: "Guac Burger", description: "drippy and posh", price: 18, style: "Burger", rating: 4)

Sand4 = Sandwich.create!(name: "Vegan Chop Cheese", description: "who wouldn’t want to eat this", price: 8, style: "Cheesesteak", rating: 5)

Sand5 = Sandwich.create!(name: "Confit Tuna Melt", description: "takes me home", price: 10, style: "Melt", rating: 5 )

Sand6 = Sandwich.create!(name: "NAPOLI", description: "cold and bold", price: 12, style: "Sub", rating: 5)

Sand7 = Sandwich.create!(name: "Pulled Chicken Sandwich", description: "delicious tangy sauce", price: 12, style: "Cutlet", rating: 5)

Sand8 = Sandwich.create!(name: "Chop Cheese", description: "the O.G. classic", price: 5, style: "Cheesesteak", rating: 5)

Sand9 = Sandwich.create!(name: "FDNY", description: "feels like a fire engine in my mouth", price: 8, style: "Sub", rating: 5)

Sand10 = Sandwich.create!(name: "Milf Hunter", description: "the name says it all", price: 8, style: "Club", rating: 4)

Sand11 = Sandwich.create!(name: "The Beast", description: "best heart attack I ever had", price: 11, style: "Sub", rating: 5)

Sand12 = Sandwich.create!(name: "The Italian Stallion", description: "Sylvester Stallone just punched my tastebuds", price: 11, style:  "Sub", rating: 5)

Sand13 = Sandwich.create!(name: "Italian Combo", description: "best Italian Combo in the city", price: 9, style: "Sub", rating: 5)

Sand14 = Sandwich.create!(name: "Chicken Cutlet", description: "homemade on a roll with lettuce	mayo and hot sauce is fire", price: 5, style: "Cutlet", rating: 3)

Sand15 = Sandwich.create!(name: "Chop Cheese", description: "The best in bed stuy", price: 5, style: "CheeseSteak", rating: 4)

Sand16 = Sandwich.create!(name: "Chicken Cesar", description: "low key secret spot that only serves sandwiches on Wednesday", price: 10, style: "Sub", rating: 5)

Sand17 = Sandwich.create!(name: "Tuna with Balsam and Motzarelle", description: "this sandwich is incredible but a special only available on Tuesdays", price: 10, style: "Sub", rating: 5)

Sand18 = Sandwich.create!(name: "Spicy Banh Mi", description: "this is a classic and their spicy actually has a good kick", price: 8, style: "Sub", rating: 5)

Sand19 = Sandwich.create!(name: "Hot Breast", description: "a big hot chicken sandwich a locally loved dive bar… best when drunk", price: 12, style: "Cutlet", rating: 5)

Sand20 = Sandwich.create!(name: "Roast Beef", description: "this is large and in charge… you feel like you are in the mob when you eat it", price: 10, style: "Melt", rating: 5)

Sand21 = Sandwich.create!(name: "Roast Beef", description: "this is basically a fast food joint that hits the spot.  Best after quite a few beers", price: 6, style: "Melt", rating: 3)

Sand22 = Sandwich.create!(name: "Eggplant Parm", description: "well worth the journey because the eggplant parm is the best in nyc", price: 12, style: "Sub", rating: 5)

Sand23 = Sandwich.create!(name: "Toscana", description: "keeping the legit Italian alive in Manhattan... get a bite here after going to the hudson yards", price: 18, style: "Sub", rating: 4)

Sand24 = Sandwich.create!(name: "Bridgette bardo", description: "never look back... it is the truth... I have died in paris", price: 18, style: "club", rating: 5)

Sand25 = Sandwich.create!(name: "Tofu Sandwich", description: "light and healty... apparently their pho is also good", price: 12, style: "sub", rating: 3)


#### Deli Seed ####     40.79219148698767, -73.93854900173078

Deli1 = Deli.create!(name: "Champs Diner", address: "197 Meserole St, Brooklyn, NY 11206", style: "Diner", hours_open: "12pm - 8pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.70844058763656, lng: -73.94089983118074)

Deli2 = Deli.create!(name: "by CHLOE", address: "171 N 3rd St, Brooklyn, NY 11211", style: "Diner", hours_open: "11am - 9pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.71521478758411, lng: -73.95936320173284)

Deli3 = Deli.create!(name: "The VSPOT", address: "156 5th Ave, Brooklyn, NY 11217", style: "Jewish Deli", hours_open: "12pm - 10pm", neighborhood: "Park Slope", borough: "Brooklyn", lat: 40.67809599640726, lng: -73.97952313118138)

Deli4 = Deli.create!(name: "The Brooklyn Tree", address: "188 Montrose Ave, Brooklyn, NY 11206", style: "Restaurant", hours_open: "11am-10pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.70732138764527, lng: -73.94184593118072)

Deli5 = Deli.create!(name: "Cafe Moca", address: "487 Seneca Ave, Ridgewood, NY 11385", style: "Restaurant", hours_open: "9am - 3pm", neighborhood: "Ridgewood", borough: "Queens", lat: 40.705686104308356, lng: -73.91226896062858)

Deli6 = Deli.create!(name: "Pisillo Italian Panini", address: "97 Nassau St, New York, NY 10038", style: "Italian Deli", hours_open: "11am - 8pm", neighborhood: "Tribeca", borough: "Manhattan", lat: 40.71055499590835, lng: -74.00759300173287)

Deli7 = Deli.create!(name: "Cafe On Ralph", address: "86 Ralph Ave, Brooklyn, NY 11221", style: "Restaurant", hours_open: "10am - 5pm", neighborhood: "Bed Stuy", borough: "Brooklyn", lat: 40.68715678780137, lng: -73.92379613118116)

Deli8 = Deli.create!(name: "Harlem Taste (Hajji’s)", address: "2135 1st Avenue, New York, NY 10029", style: "Bodega", hours_open: "24/7", neighborhood: "Harlem", borough: "Manhattan", lat: 40.79219148698767, lng: -73.93854900173078)

Deli9 = Deli.create!(name: "Anthony & Son Panini Shoppe", address: "433 Graham Ave, Brooklyn, NY 11211", style: "Italian Deli", hours_open: "8am - 8pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.7179749793313, lng: -73.94515079007596)

Deli10 = Deli.create!(name: "Hana Food", address: "534 Metropolitan Ave, Brooklyn, NY 11211", style: "Bodega", hours_open: "24/7", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.71394288759404, lng: -73.95104080173277)

Deli11 = Deli.create!(name: "Sal, Kris & Charlies Deli", address: "33-12 23rd Ave, Queens, NY 11105", style: "Italian Deli", hours_open: "5am - 6pm", neighborhood: "Ditmars Steinway", borough: "Queens", lat: 40.77319317932523, lng: -73.91161296062683)

Deli12 = Deli.create!(name: "Defontes Sandwich Shop", address: "379 Columbia St, Brooklyn, NY 11231", style: "Italian Deli", hours_open: "6am - 4pm", neighborhood: "Red Hook", borough: "Brooklyn", lat: 40.67896198786477, lng: -74.00531733118139)

Deli13 = Deli.create!(name: "Emily's Pork Store", address: "426 Graham Ave, Brooklyn, NY 11211", style: "Italian Deli", hours_open: "9am - 6pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.71764070403358, lng: -73.94474976062813)

Deli14 = Deli.create!(name: "Green Deli Mart and Grill", address: "33 Patchen Ave, Brooklyn, NY 11221", style: "Bodega", hours_open: "24/7", neighborhood: "Bed Stuy", borough: "Brooklyn", lat: 40.69126467933424, lng: -73.92741600173329)

Deli15 = Deli.create!(name: "Mini Market Incorporated", address: "1173 Broadway, Brooklyn, NY 11221", style: "Bodega", hours_open: "24/7", neighborhood: "Bed Stuy", borough: "Brooklyn", lat: 40.692858551148795, lng: -73.927534960488)

Deli16 = Deli.create!(name: "Lindustrie pizzeria", address: "254 S 2nd St, Brooklyn, NY 11211", style: "Italian Deli", hours_open: "12pm - 10pm", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.71160578761208, lng: -73.95786843118051)

Deli17 = Deli.create!(name: "Fiores House of Quality", address: "414 Adams St #2693, Hoboken, NJ 07030", style: "Italian Deli", hours_open: "8am - 6pm", neighborhood: "Hoboken", borough: "New Jersey", lat: 40.743017495409255, lng: -74.0361836017321)

Deli18 = Deli.create!(name: "Henrys", address: "433 7th Ave, Brooklyn, NY 11215", style: "Vietnamese Deli", hours_open: "11am - 9:30pm", neighborhood: "Park Slope", borough: "Brooklyn", lat: 40.66341878798499, lng: -73.98421054283844)

Deli19 = Deli.create!(name: "The Commodore", address: "366 Metropolitan Ave, Brooklyn, NY 11211", style: "Restaurant", hours_open: "12pm - 12am", neighborhood: "Williamsburg", borough: "Brooklyn", lat: 40.713904879331594, lng: -73.95589390173274)

Deli20 = Deli.create!(name: "Brennan & Carr", address: "3432 Nostrand Ave., Brooklyn, NY 11229", style: "Restaurant", hours_open: "11am - 12am", neighborhood: "Sheepshead Bay", borough: "Brooklyn", lat: 40.600238579344285, lng: -73.94210453118335)

Deli21 = Deli.create!(name: "Roll N Roaster", address: "2901 Emmons Ave, Brooklyn, NY 11235", style: "Restaurant", hours_open: "11am - 12am", neighborhood: "Sheepshead Bay", borough: "Brooklyn", lat: 40.58417747934587, lng: -73.93964133118375)

Deli22 = Deli.create!(name: "C & C Italian Deli", address: "149-19 Centreville St, Ozone Park, NY 11417", style: "Italian Deli", hours_open: "6am - 6pm", neighborhood: "Ozone Park", borough: "Queens", lat: 40.67063939652181, lng: -73.83819400173391)

Deli23 = Deli.create!(name: "Sergimmo Salumeria", address: "456 9th Ave, New York, NY 10018", style: "Italian Deli", hours_open: "11am - 10pm", neighborhood: "Garment District", borough: "Manhattan", lat: 40.754272979327475, lng: -73.99545391338845)

Deli24 = Deli.create!(name: "Le Petit Parisien", address: "32 E 7th St, New York, NY 10003", style: "Restaurant", hours_open: "8am - 6pm", neighborhood: "Gramercy", borough: "Manhattan", lat: 40.728267484577714, lng: -73.98910022903434)

Deli25 = Deli.create!(name: "Cyclo", address: "5-51 47th Ave, Queens, NY 11101", style: "Vietnamese Deli", hours_open: "12pm - 10pm", neighborhood: "Long Island City", borough: "Queens", lat: 40.74568767932824, lng: -73.95352093117981)



#### Like Seed ####

Like1 = Like.create!(user: james, sandwich: Sand13)
Like2 = Like.create!(user: james, sandwich: Sand14)
Like3 = Like.create!(user: james, sandwich: Sand15)
Like4 = Like.create!(user: james, sandwich: Sand16)
Like5 = Like.create!(user: james, sandwich: Sand17)
Like6 = Like.create!(user: james, sandwich: Sand18)
Like7 = Like.create!(user: james, sandwich: Sand19)

#### Review Seed ####

Review1 = Review.create!(title: "The Best Italian Deli in Brooklyn", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "This place is magic and I want everyone to know about it… but I don’t want there to be long lines.  Sandwiches are incredible, owners are very sweet, old school vibe that keeps the Italian history of north Brooklyn alive", rating: 5, user: james, deli: Deli13) 

Review2 = Review.create!(title: "Local Chicken Cutlet", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "this is my local spot to grab a chicken cutlet or can of beer.  Sam is the best at making sandwiches so if you see her behind the counter get some food!  Everyone is chill and there is a decent beer selection", rating: 5, user: james, deli: Deli14) 

Review3 = Review.create!(title: "Local wild bodega", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "This bodega sits on broadway so it is full of crazy nyc.  That definitely gives the spot charm but don’t come in here being to sensitive.  Just make sure you don’t leave without getting the chop cheese!", rating: 5, user: james, deli: Deli15) 

Review4 = Review.create!(title: "Best Kept Secret", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "L’industrie is low key over everyone else.  It has probably the best pizza in nyc and they barely advertise the fact that they sell sandwiches (only on Wednesdays!) But they are better than any trendy thing out there.  This place is tiny and you can’t even go inside… it doesn’t even need an inside to be legit", rating: 5, user: james, deli: Deli16) 

Review5 = Review.create!(title: "Old School vibe with tons of secret specials", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "Reason to go to New Jersey!  This place feels like it is 100 years old and probably is.  You need to get there on a Tuesday to get the tuna and mozzarella sandwich… possibly one of the most simple and legit Italian subs out there", rating: 5, user: james, deli: Deli17) 

Review6 = Review.create!(title: "Cheap and delicious", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "Henry’s is a gem in an odd place.  While Park Slope has other spots making banh mi sandwiches Henry’s is the cheapest and best hands down", rating: 5, user: james, deli: Deli18) 

Review7 = Review.create!(title: "Best bar food out there", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "Two birds with one stone at the commodore.  You can have a delicious hand made Pina colada, a cheep beer, or a hot breast chicken sandwich that is huge.  Best get all 3", rating: 5, user: james, deli: Deli19) 

Review8 = Review.create!(title: "More Than a Bodega", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "I am probably overhyping this place", rating: 5, user: brian, deli: Deli9) 

Review9 = Review.create!(title: "Drunk Bodega Dinner", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "Show up late... and the sandwich will be the pillow that puts you to sleep.  Something I always dreamed of.", rating: 3, user: brian, deli: Deli10) 

Review10 = Review.create!(title: "Old School for a reason", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "Weird neighborhood but well worth the trip.", rating: 4, user: brian, deli: Deli11) 

Review11 = Review.create!(title: "Classic so you cant go wrong", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "I always get the Italian Stallion aka Sylvester Stallone but I am pretty sure all the sandwichs are bomb.", rating: 5, user: brian, deli: Deli12) 

Review12 = Review.create!(title: "Get The Eggplant", date: Faker::Date.between(from: '2018-09-23', to: '2021-01-01'), body: "I tried the Italian Stallion and it was aight... but I get the Valentini Special because keep it simple with the fried eggplant", rating: 5, user: james, deli: Deli12) 


#### DeliSandwich Seed ####

DS1 = DeliSandwich.create!(sandwich: Sand1, deli: Deli1)
DS2 = DeliSandwich.create!(sandwich: Sand2, deli: Deli2)
DS3 = DeliSandwich.create!(sandwich: Sand3, deli: Deli3)
DS4 = DeliSandwich.create!(sandwich: Sand4, deli: Deli4)
DS5 = DeliSandwich.create!(sandwich: Sand5, deli: Deli5)
DS6 = DeliSandwich.create!(sandwich: Sand6, deli: Deli6)
DS7 = DeliSandwich.create!(sandwich: Sand7, deli: Deli7)
DS8 = DeliSandwich.create!(sandwich: Sand8, deli: Deli8)
DS9 = DeliSandwich.create!(sandwich: Sand9, deli: Deli9)
DS10 = DeliSandwich.create!(sandwich: Sand10, deli: Deli10)
DS11 = DeliSandwich.create!(sandwich: Sand11, deli: Deli11)
DS12 = DeliSandwich.create!(sandwich: Sand12, deli: Deli12)
DS13 = DeliSandwich.create!(sandwich: Sand13, deli: Deli13)
DS14 = DeliSandwich.create!(sandwich: Sand14, deli: Deli14)
DS15 = DeliSandwich.create!(sandwich: Sand15, deli: Deli15)
DS16 = DeliSandwich.create!(sandwich: Sand16, deli: Deli16)
DS17 = DeliSandwich.create!(sandwich: Sand17, deli: Deli17)
DS18 = DeliSandwich.create!(sandwich: Sand18, deli: Deli18)
DS19 = DeliSandwich.create!(sandwich: Sand19, deli: Deli19)
DS20 = DeliSandwich.create!(sandwich: Sand20, deli: Deli20)
DS21 = DeliSandwich.create!(sandwich: Sand21, deli: Deli21)
DS22 = DeliSandwich.create!(sandwich: Sand22, deli: Deli22)
DS23 = DeliSandwich.create!(sandwich: Sand23, deli: Deli23)
DS24 = DeliSandwich.create!(sandwich: Sand24, deli: Deli24)
DS25 = DeliSandwich.create!(sandwich: Sand25, deli: Deli25)




