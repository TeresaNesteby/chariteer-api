# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Volunteers
Volunteer.create(photo_url: "http://i173.photobucket.com/albums/w46/Teresa_Nesteby/d8cc3771-57e4-4035-88c3-fffcc852f919_zpsn9gy4shx.jpg", first_name: "Peeper", last_name: "Ram", email: "pram@gmail.com", password: "123", interest: "Cats")
Volunteer.create(photo_url: "http://designurge.com/wp-content/uploads/2014/03/smiley-face-wallpaper-001-268x300.jpg",first_name: "Gai", last_name: "Vien", email: "gai@gmail.com", password: "123", interest: "Hiking")


# Animals 1
Organization.create(logo_image: "https://pbs.twimg.com/profile_images/3343036919/d8ba4f06f2a81fd1e9df377889855fe1_400x400.jpeg",name: "Aquarium of the Bay", password: "123", mission_statement: "Aquarium of the Bay's mission is to protect, restore, and inspire conservation of the San Francisco Bay and its watershed from the Sierra to the sea.", email: "MelissaPalmer@gmail.com", phone_number: "415-623-5300", website_url: "http://www.aquariumofthebay.org", non_profit: true)
# 2
Organization.create(logo_image: "https://www.teenlife.com/media/uploads/listings//golden-gate-audubon-society/GGAS%20logo.jpg",name:"Golden Gate Audubon Society", password: "123", mission_statement:"The Golden Gate Audubon Society engages people to experience the wonder of birds, and translate that wonder into action; and protect native bird populations and their habitats.", email:"VolunteerCoordinator@gmail.com", phone_number: "(510) 843-2222", website_url:"http://www.goldengateaudubon.org", non_profit: true)

# Health & Medicine 3
Organization.create(logo_image: "https://www.missionmanager.com/wp-content/uploads/2015/07/American-Red-Cross.jpg",name:"American Red Cross - California Coastal Region", password: "123", mission_statement:"The American Red Cross prevents and alleviates human suffering in the face of emergencies by mobilizing the power of volunteers and the generosity of donors.", email:"VolunteerCoordinator@gmail.com", phone_number: "415-427-8000", website_url: "www.redcross.org", non_profit: true)  # no logo
# 4
Organization.create(logo_image: "app/assets/images/bridgeHIV.jpeg",name:"Bridge HIV, SF Department of Public Health", password: "123", mission_statement:"Bridge HIV’s mission is to collaborate with communities to conduct innovative research that will guide HIV prevention locally and globally. We are committed to providing leadership in the development and testing of strategies to prevent HIV infection and disease progression. By collaborating with other researchers and communities throughout the world, our scientific breakthroughs will be used to help the people most affected by the epidemic. This cohesive work environment fosters innovation, accountability, and continual learning.", email:"VolunteerBridgeHIV@gmail.com", phone_number: "415-437-7485", website_url:"http://www.bridgehiv.org", non_profit: true)
# 5
Organization.create(logo_image: "app/assets/images/bridgeHIV.jpeg",name:"Bridge HIV, SF Department of Public Health", password: "123", mission_statement:"Bridge HIV’s mission is to collaborate with communities to conduct innovative research that will guide HIV prevention locally and globally. We are committed to providing leadership in the development and testing of strategies to prevent HIV infection and disease progression. By collaborating with other researchers and communities throughout the world, our scientific breakthroughs will be used to help the people most affected by the epidemic. This cohesive work environment fosters innovation, accountability, and continual learning.", email:"VolunteerBridgeHIV@gmail.com", phone_number: "415-437-7485", website_url:"http://www.bridgehiv.org", non_profit: true)

# Children & Youth 6
Organization.create(logo_image: "app/assets/images/commgrows.jpg",name:"CommunityGrows", password: "123", mission_statement:"Our mission is to cultivate healthy youth through growing gardens in low-income, diverse communities. We help plant the seeds that empower our communities.", email:"OpportunityContact@gmail.com", phone_number: "(415) 431-8112", website_url:"http://www.communitygrows.org", non_profit: true)

# 7
Organization.create(logo_image: "https://grassroots.groupon.com/files/2012/09/girls-on-the-run-logo.jpeg",name:"Girls on the Run of the Bay Area", password: "123", mission_statement:"To educate and build confidence in young girls through quality running programs in San Francisco, Alameda, Contra Costa, Marin and San Mateo Counties.", email:"NatalieStack@gmail.com", phone_number: "(415) 863-8942", website_url:"http://www.gotrbayarea.org", non_profit: true)

# Advocacy & Human Rights 8
Organization.create(logo_image: "http://www.beyondchron.org/wp-content/uploads/news_images/2012/tenants_together.jpg",name:"Tenants Together", password: "123", mission_statement:"Tenants Together is a nonprofit organization dedicated to defending and advancing the rights of California tenants to safe, decent and affordable housing. As California's only statewide renters' rights organization, Tenants Together works to improve the lives of California's tenants through education, organizing and advocacy. Tenants Together seeks to galvanize a statewide movement for renters' rights.", email:"AimeeInglis@gmail.com", phone_number: "(415) 495-8100", website_url:"http://www.tenantstogether.org", non_profit: true)
# 9
Organization.create(logo_image: "app/assets/images/recsurvnet.jpeg",name:"Recovery Survival Network", password: "123", mission_statement:"To help those who want to help themselves", email: "LouGordon@gmail.com", phone_number: "415-552-1111", website_url:"http://www.rsn2000.org", non_profit: true)

# Sports & Recreation
Organization.create(logo_image: "app/assets/images/amerscor.jpeg",name:"American SCORES Bay Area", password: "123",  mission_statement:"America SCORES inspires urban youth to lead healthy lives, be engaged students, and have the confidence and character to make a difference in the world.", email: "Shannon@gmail.com", phone_number: "760 914 3154", website_url:"http://www.americascoresbayarea.org", non_profit: true)
Organization.create(logo_image: "https://www.volunteermatch.org/images/gallery/8304A641-6A75-74D7-D361-542BFFD6FF0F",name:"Shanti Porject", password: "123",  mission_statement:"The Shanti Project's community of Volunteers and Staff provides emotional and practical support to San Francisco's most vulnerable individuals living with life-threatening illness.", email:"shanti@gmail.com", phone_number: "415-674-4708 ", website_url:"http://www.shanti.org/", non_profit: true)


Category.create(category_type: "Health & Medicine")
Category.create(category_type: "Animals")
Category.create(category_type: "Children & Youth")
Category.create(category_type: "Sports and Recreation")
Category.create(category_type: "Advocacy and Human Rights")

Event.create(name: "Coastal Cleanup Day Beach Cleanup", category_id: 2, organization_id:1, volunteer_id: 1, org_name: "Aquarium of the Bay", place: "San Francisco Bay", date: "Saturday, September 19, 2015", time: "9:00 AM-12:00 AM", image: "https://pbs.twimg.com/profile_images/3343036919/d8ba4f06f2a81fd1e9df377889855fe1_400x400.jpeg")
Event.create(name: "Volunteer Water Quality Technician", category_id: 2, organization_id:1, volunteer_id: 1, org_name: "Golden Gate Audubon Society", place: "San Francisco Bay", date: "Saturday, September 5, 2015 and Saturday, October 3, 2015", time: "9 AM - Noon", image: "https://www.teenlife.com/media/uploads/listings//golden-gate-audubon-society/GGAS%20logo.jpg")

Event.create(name: "Engage in habitat restoration on San Francisco's waterfront", category_id: 2, organization_id:2, volunteer_id: 1, org_name: "Aquarium of the Bay", place: "San Francisco Bay", date: "Saturday, September 19, 2015", time: "9:00 AM-12:00 AM", image: "http://cdn.funcheap.com/wp-content/uploads/2013/02/megashark_31.jpg")

Event.create(name: "Fulfill your passion for supporting our nation's military and their families by becoming an American", category_id: 1, organization_id:3, volunteer_id: 1, org_name: "American Red Cross", place: "1300 Alberta Way", date: "It's flexible!", time: "We'll work with your schedule!", image: "https://www.missionmanager.com/wp-content/uploads/2015/07/American-Red-Cross.jpg")

Event.create(name: "Online Organizing Intern", category_id: 5, organization_id:8, volunteer_id: 1, org_name: "Tenants Together", place: "995 Market Street, Suite 1202, San Francisco, CA 94103", date: "It's flexible!", time: "We'll work with your schedule!", image: "http://www.beyondchron.org/wp-content/uploads/news_images/2012/tenants_together.jpg")

Event.create(name: "Coach a team for Girls on the Run", category_id: 3, organization_id:7, volunteer_id: 1, org_name: "Girls on the Run", place: "3543 18th Street San Francisco, CA 94110", date: "Saturday, September 5, 2015 - Sunday, December 20, 2015", time: "TBD", image: "https://grassroots.groupon.com/files/2012/09/girls-on-the-run-logo.jpeg")

