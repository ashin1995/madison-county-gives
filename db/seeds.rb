# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Organization.delete_all
Campaign.delete_all
CampaignChange.delete_all
ShortQuestion.delete_all
ShortResponse.delete_all
Payment.delete_all
StatusUpdate.delete_all

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

User.create!(id: 1, email: "bg8s@colgate.edu", password: "123456", is_admin: false)
User.create!(id: 2, email: "pastapls@yahoo.com", password: "123456", is_admin: false)
User.create!(id: 3, email: "hello@schooltheyouth.org", password: "123456", is_admin: false)
User.create!(id: 4, email: "admin@madisoncountygives.com", password: "123456", is_admin: true)
User.create!(id: 5, email: "test@colgate.edu", password: "123456", is_admin: false)
User.create!(id: 6, email: "test2@colgate.edu", password: "123456", is_admin: false)

Organization.create!(id: 1, user_id: 1, name: "Gates Foundation", primary_contact: "Bill Gates", address: "1 Microsoft Way", description: "Mosquitos are bugs. We're expert debuggers.", is_approved: true, image: seed_image('gates_foundation.png'))
Organization.create!(id: 2, user_id: 2, name: "Spaghetti 4 Freddy", primary_contact: "Fred Y.", address: "11 Noodle Lane", description: "Give Freddy the Italian hospitality he doesn't deserve, today", is_approved: true, image: seed_image('spaghetti.jpg'))
Organization.create!(id: 3, user_id: 3, name: "Youth Education", primary_contact: "Jean Erick", address: "95 Charity Ave.", description: "Bright minds are bright futures", is_approved: true, image: seed_image('youth_education.jpg'))
Organization.create!(id: 4, user_id: 5, name: "Test Organization", primary_contact: "John Smith", description: "Test description", is_approved: false, image: seed_image('organization.jpeg'))
Organization.create!(id: 5, user_id: 6, name: "Test Organization 2", primary_contact: "John Smith", description: "Test description 2", is_approved: false, image: seed_image('organization.jpeg'))

Campaign.create!(id: 1, name: "Malaria Vaccines", organization_id: 1, start_date: Date.new(2017, 11, 13), is_active: true, description: "We are funding a large wave of Malaria vaccines for children in rural Zimbabwe.", goal: 300000, image: seed_image('malaria_vaccine.jpeg'), is_featured: true)
Campaign.create!(id: 2, name: "Ravioli Meal for 1", organization_id: 2, start_date: Date.new(2017, 10, 13), is_active: true, description: "Olive Garden is closed all next week and I think I'm going to starve.", goal: 20, image: seed_image('ravioli.jpeg'), is_featured: false)
Campaign.create!(id: 3, name: "Cure for Polio", organization_id: 1, start_date: Date.new(2017, 10, 13), is_active: false, description: "This is an ambitious undertaking; immunization is not enough. We need to cure polio. Again.", goal: 1000000, image: seed_image('polio.jpg'), is_featured: true)
Campaign.create!(id: 4, name: "Textbooks for 1st Graders", organization_id: 3, start_date: Date.new(2017, 11, 13), is_active: true, description: "SAT Prep for Toddlers and Junior Differential Equations needed for a class of 20!", goal: 1000, image: seed_image('textbooks.jpg'), is_featured: false)

CampaignChange.create!(id: 1, campaign_id: nil, organization_id: 1, action: "CREATE", name: "Test Campaign", description: "This will be a test campaign change.", start_date: Date.new(2017, 12, 10), goal: 1000, image: seed_image('lab.jpg'))
CampaignChange.create!(id: 2, campaign_id: 1, organization_id: 1, action: "UPDATE", name: "Malaria Vaccines", start_date: Date.new(2017, 11, 13), description: "We are funding a large wave of Malaria vaccines for children in rural Zimbabwe. The fund-raising campaign will last for one year.", goal: 300000, image: seed_image('malaria_vaccine.jpeg'))
CampaignChange.create!(id: 3, campaign_id: 3, organization_id: 1, action: "DELETE", name: "Cure for Polio", start_date: Date.new(2017, 10, 13), description: "This is an ambitious undertaking; immunization is not enough. We need to cure polio. Again.", goal: 1000000, image: seed_image('polio.jpg'))
CampaignChange.create!(id: 4, campaign_id: 2, organization_id: 2, action: "UPDATE", name: "Ravioli Meal for 1", start_date: Date.new(2017, 10, 13), description: "Olive Garden is closed all next month and I think I'm going to starve.", goal: 140, image: seed_image('ravioli.jpeg'))
CampaignChange.create!(id: 5, campaign_id: nil, organization_id: 3, action: "CREATE", name: "My Test Campaign", description: "This will be a test campaign change.", start_date: Date.new(2017, 12, 10), goal: 2000, image: seed_image('lab.jpg'))

ShortQuestion.create!(id: 1, question: "What is the central goal of your organization?")
ShortQuestion.create!(id: 2, question: "How does this organization benefit the people of Madison County?")
ShortQuestion.create!(id: 3, question: "What are some of your organization's long-term goals regarding charity efforts in Madison County?")

ShortResponse.create!(id: 1, organization_id: 1, short_question_id: 1, response: "We aim to make the world a better place by prioritizing human welfare and health in every place it is needed.")
ShortResponse.create!(id: 2, organization_id: 1, short_question_id: 2, response: "Threats to human well-being disproportionately target lower-income areas.  While our efforts may not appear to directly benefit Madison County, the plus-sides to eradicating disease and minimizing poverty are universal.")
ShortResponse.create!(id: 3, organization_id: 1, short_question_id: 3, response: "In the future, we are looking to open alcohol rehabilitation centers in Madison County as well as opening up free adult schools for lower-income residents.")
ShortResponse.create!(id: 4, organization_id: 2, short_question_id: 1, response: "I'm hungry and I really like pasta.")
ShortResponse.create!(id: 5, organization_id: 2, short_question_id: 2, response: "Well, I live in Morristown, so I guess that's close enough.")
ShortResponse.create!(id: 6, organization_id: 2, short_question_id: 3, response: "I'm looking to branch out and explore more diverse cuisines like CiCi's or Pizza Hut next month.")
ShortResponse.create!(id: 7, organization_id: 3, short_question_id: 1, response: "We want to prepare young kids in Madison County for their futures through advanced education starting at an early age.")
ShortResponse.create!(id: 8, organization_id: 3, short_question_id: 2, response: "Education is one of the best ways for economic mobility and it also encourages local innovation. Investing in the kids of Madison County will definitely bring good to the area through personal advancement.")
ShortResponse.create!(id: 9, organization_id: 3, short_question_id: 3, response: "Once we have prepared the textbooks and building permits for a schooling location, we are looking to hire university PhDs to teach Kantian Philosophy, Numerical Analysis, and Keysnian Economics in our classes.")

Payment.create(id: 1, campaign_id: 1, amount: 30000, name: "Bill Gates", is_anonymous: false)
Payment.create(id: 2, campaign_id: 1, amount: 60000, name: "John Smith", is_anonymous: true)
Payment.create(id: 3, campaign_id: 2, amount: 20, name: "John Smith", is_anonymous: true)
Payment.create(id: 4, campaign_id: 3, amount: 2000000, name: "???", is_anonymous: true)

if Rails.env.production?
  connection = ActiveRecord::Base.connection
  connection.execute("SELECT setval('payments_id_seq', (SELECT MAX(id) FROM payments)+1);")
  connection.execute("SELECT setval('campaigns_id_seq', (SELECT MAX(id) FROM campaigns)+1);")
  connection.execute("SELECT setval('campaign_changes_id_seq', (SELECT MAX(id) FROM campaign_changes)+1);")
  connection.execute("SELECT setval('organizations_id_seq', (SELECT MAX(id) FROM organizations)+1);")
  connection.execute("SELECT setval('short_questions_id_seq', (SELECT MAX(id) FROM short_questions)+1);")
  connection.execute("SELECT setval('short_responses_id_seq', (SELECT MAX(id) FROM short_responses)+1);")
  connection.execute("SELECT setval('status_updates_id_seq', (SELECT MAX(id) FROM status_updates)+1);")
  connection.execute("SELECT setval('users_id_seq', (SELECT MAX(id) FROM users)+1);")
end
