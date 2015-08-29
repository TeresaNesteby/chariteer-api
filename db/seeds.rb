# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Animals
Organization.create(name: "Aquarium of the Bay", mission_statement: "Aquarium of the Bay's mission is to protect, restore, and inspire conservation of the San Francisco Bay and its watershed from the Sierra to the sea.", contact_email: "Melissa Palmer, 415-623-5300", website: "http://www.aquariumofthebay.org", non_profit: true)
Organization.create(name:"Golden Gate Audubon Society", mission_statement:"The Golden Gate Audubon Society engages people to experience the wonder of birds, and translate that wonder into action; and protect native bird populations and their habitats.", contact_email:"Volunteer Coordinator (510) 843-2222", website:"http://www.goldengateaudubon.org", non_profit: true)

# Health & Medicine
Organization.create(name:"American Red Cross - California Coastal Region", mission_statement:"The American Red Cross prevents and alleviates human suffering in the face of emergencies by mobilizing the power of volunteers and the generosity of donors.", contact_email:"Volunteer Coordinator, 415-427-8000", website:       , non_profit: true)  # no logo
Organization.create(name:"Bridge HIV, SF Department of Public Health",mission_statement:"Bridge HIV’s mission is to collaborate with communities to conduct innovative research that will guide HIV prevention locally and globally. We are committed to providing leadership in the development and testing of strategies to prevent HIV infection and disease progression. By collaborating with other researchers and communities throughout the world, our scientific breakthroughs will be used to help the people most affected by the epidemic. This cohesive work environment fosters innovation, accountability, and continual learning.", contact_email:"Volunteer Bridge HIV, 415-437-7485", website:"http://www.bridgehiv.org", non_profit: true)

# Children & Youth
Organization.create(name:"CommunityGrows", mission_statement:"Our mission is to cultivate healthy youth through growing gardens in low-income, diverse communities. We help plant the seeds that empower our communities.", contact_email:"Opportunity Contact, (415) 431-8112", website:"http://www.communitygrows.org", non_profit: true)
Organization.create(name:"Girls on the Run of the Bay Area", mission_statement:"To educate and build confidence in young girls through quality running programs in San Francisco, Alameda, Contra Costa, Marin and San Mateo Counties.", contact_email:"Natalie Stack, (415) 863-8942", website:"http://www.gotrbayarea.org", non_profit: true)

# Advocacy & Human Rights
Organization.create(name:"Tenants Together", mission_statement:"Tenants Together is a nonprofit organization dedicated to defending and advancing the rights of California tenants to safe, decent and affordable housing. As California's only statewide renters' rights organization, Tenants Together works to improve the lives of California's tenants through education, organizing and advocacy. Tenants Together seeks to galvanize a statewide movement for renters' rights.", contact_email:"Aimee Inglis, (415) 495-8100", website:"http://www.tenantstogether.org", non_profit: true)
Organization.create(name:"Recovery Survival Network", mission_statement:"To help those who want to help themselves", contact_email: "Lou Gordon, 415-552-1111", website:"http://www.rsn2000.org", non_profit: true)

# Sports & Recreation
Organization.create(name:"American SCORES Bay Area", mission_statement:"America SCORES inspires urban youth to lead healthy lives, be engaged students, and have the confidence and character to make a difference in the world.", contact_email: "Shannon Burns, 760 914 3154", website:"http://www.americascoresbayarea.org", non_profit: true)
Organization.create(name:"Multiple Sclerosis Association of America", mission_statement:"The Multiple Sclerosis Association of America (MSAA) is a leading resource for the entire MS community, improving lives today through vital services and support.", contact_email:"Erica Villecco, (800) 532-7667", website:"http://support.mymsaa.org/volunteer", non_profit: true)