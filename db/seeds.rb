# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Item.destroy_all

demo = User.create!(username:'demo', password:'password')


demo.image = File.new('app/assets/images/gumbi.jpg')

project1 = Project.create!(
  title:'Winter', 
  description:'Never Summer', 
  category: 'Photography', 
  author_id: demo.id
)

item1 = Item.create!(
  project_id: project1.id, 
  caption:'When we were gods', 
  image:  File.new('app/assets/images/snow/whistler.jpg')
)

item2 = Item.create!(
  project_id: project1.id, 
  caption:'wassaaapppp', 
  image:  File.new('app/assets/images/snow/wassap.jpg')
)

item3 = Item.create!(
  project_id: project1.id, 
  caption:'Beautiful', 
  image:  File.new('app/assets/images/snow/jacksonhole_clouds.jpg')
)

item4 = Item.create!(
  project_id: project1.id, 
  caption:'WHAAATTTTT', 
  image:  File.new('app/assets/images/snow/bigsky.jpg')
)

item5 = Item.create!(
  project_id: project1.id, 
  caption:'Meeeltttttinnnggg', 
  image:  File.new('app/assets/images/snow/helpme.jpg')
)