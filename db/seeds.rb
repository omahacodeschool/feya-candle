# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create(name: "Uniform Connection", address: "5740 Old Cheney Rd", city: "Lincoln", state: "NE", zip: 68516)
Location.create(name: "Body Nouveaux Spa", address: "5600 S. 48th St", city: "Lincoln", state: "NE", zip: 68516, phone: "402.476.7855")
Location.create(name: "Indigo Bridge Books", address: "701 P St #102", city: "Lincoln", state: "NE", zip: 68508, phone: "402.477.7770")
Location.create(name: "KD Designs Jewelry", address: "350 Canopy St", city: "Lincoln", state: "NE", zip: 68508)
Location.create(name: "Luvbird Boutique", address: "2110 S. 67th St #120", city: "Omaha", state: "NE", zip: 68106, phone: "402.502.9924")
Location.create(name: "Lotus House of Yoga", address: "10363 Pacific St", city: "Omaha", state: "NE", zip: 68114, phone: "402.933.1788")
# Location.create(name: "www.thepinkstore.com", city: "Omaha", state: "NE", zip: 68022)
Location.create(name: "Patrick's Market", address: "1416 Howard St", city: "Omaha", state: "NE", zip: 68102, phone: "402.884.1600")
Location.create(name: "The Willow Tree", address: "4429 Murphy Rd", city: "Nashville", state: "TN", zip: 37209)
Location.create(name: "Tennessee Chic", address: "1818 21st Ave S", city: "Nashville", state: "TN", zip: 37212)
Location.create(name: "Serendipity 12", address: "2301 12th Ave S", city: "Nashville", state: "TN", zip: 37204, phone: "615.279.5570")
Location.create(name: "Hazel", address: "902 West Montrose", city: "Chicago", state: "IL", zip: 60613)
Location.create(name: "Frock Boutique", address: "4 Battery Park Ave", city: "Asheville", state: "NC", zip: 28801, phone: "828.255.4626")

# seed data for user
User.create(email: "feyacandle@gmail.com", password: "ilovecandles", password_confirmation: "ilovecandles")

# seed data for products
Product.create(name: "Bakers Dozen", price: "$15.00", description: "Ever walk into a bakery and never want to leave? Us too. A combination of freshly-baked pies, cupcakes, frosting and artisan bread - this is a bakery lovers dream!")
Product.create(name: "Brown Sugar & Fig", price: "$15.00", description: "Sweet and smooth yet a little bit exotic, experience the calming fragrance of rich brown sugar glazed atop a Mediterranean fig - paradise.")
Product.create(name: "Lavender", price: "$15.00", description: "Calm yourself as you walk through a field of lavendar along the french hillside in the afternoon - yea, it pretty much feels like that.")
Product.create(name: "Lemon Spritz", price: "$15.00", description: "Crisp and light - brighten up your day with a lemon spritz fragrance: sassy lemon paired with a hint of sweet bakery goodness.")
Product.create(name: , price: "$15.00", description: "")
Product.create(name: , price: "$15.00", description: "")
Product.create(name: , price: "$15.00", description: "")
Product.create(name: , price: "$15.00", description: "")
