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

demo = User.create!(
  username:'demo', 
  password:'password',
  image: File.new('app/assets/images/gumbi.jpg')
  )

Inara = User.create!(
  username:'Inara', 
  password:'password',
  fname:'Inara', 
  lname:'Serra', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Inara-Firefly.jpg')
  )

Helga = User.create!(
  username:'Helga', 
  password:'password',
  fname:'Helga', 
  lname:'Hufflepuff', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Helga-Hufflepuff.jpg')
  )

Kvothe = User.create!(
  username:'Kvothe', 
  password:'password',
  fname:'Kvothe', 
  lname:'son of Arliden', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Kvothe.jpg')
  )

Felurian = User.create!(
  username:'Felurian', 
  password:'password',
  fname:'Felurian', 
  lname:'', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Felurian.jpg')
  )

Vin = User.create!(
  username:'Vin', 
  password:'password',
  fname:'Vin', 
  lname:'Lady Mistborn', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Ellen_Page.jpg')
  )

Albus = User.create!(
  username:'Albus', 
  password:'password',
  fname:'Albus', 
  lname:'Dumbledore', 
  image: File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Dumbledore.jpg')
  )

project1 = Project.create!(
  title:'Winter', 
  description:'Never Summer', 
  category: 'Photography', 
  author_id: demo.id
)
# project 1
glass1 = Project.create!(
  title:'Spiral Glass 1', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

item1 = Item.create!(
  project_id: glass1.id, 
  caption:'When we were gods', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)

glass1.thumbnail_url = item1.image.url 

item2 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

item3 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

item4 = Item.create!(
  project_id: Project.last.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

item5 = Item.create!(
  project_id: Project.last.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

item6 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)
# project 2
arch = Project.create!(
  title:'Architecture', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch_item1 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)
arch.thumbnail_url = arch_item1.image.url 
arch.save!

arch_item2 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch_item3 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch_item4 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch_item5 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch_item6 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch_item7 = Item.create!(
  project_id: arch.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)
# project 3 
color = Project.create!(
  title:'Fun with Hues 7', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color_item1 = Item.create!(
  project_id: color.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)

color.thumbnail_url = color_item1.image.url 
color.save!

color_item2 = Item.create!(
  project_id: color.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)

color_item3 = Item.create!(
  project_id: color.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color_item4 = Item.create!(
  project_id: color.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color_item5 = Item.create!(
  project_id: color.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color_item6 = Item.create!(
  project_id: color.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color_item7 = Item.create!(
  project_id: color.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)

# project 4
fantasy = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy_item1 = Item.create!(
  project_id: fantasy.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)

fantasy.thumbnail_url = fantasy_item1.image.url 
fantasy.save!

fantasy_item2 = Item.create!(
  project_id: fantasy.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)

fantasy_item3 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy_item4 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy_item5 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy3.jpg')
)

# project 5
weird = Project.create!(
  title:'Whimsical', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird_item1 = Item.create!(
  project_id: weird.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)

weird.thumbnail_url = weird_item1.image.url 
weird.save!

weird_item2 = Item.create!(
  project_id: weird.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)

weird_item3 = Item.create!(
  project_id: weird.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird_item4 = Item.create!(
  project_id: weird.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird_item5 = Item.create!(
  project_id: weird.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird_item6 = Item.create!(
  project_id: weird.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird_item7 = Item.create!(
  project_id: weird.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)

# project 6
landscape = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape_item1 = Item.create!(
  project_id: landscape.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)

landscape.thumbnail_url = landscape_item1.image.url 
landscape.save!

landscape_item2 = Item.create!(
  project_id: landscape.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)

landscape_item3 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape_item4 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape_item5 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape_item6 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)                                             

landscape_item7 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape_item8 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)

# project 1
glass2 = Project.create!(
  title:'Spiral Glass 7', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g2item1 = Item.create!(
  project_id: glass2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)


g2item2 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

glass2.thumbnail_url = g2item2.image.url 
glass2.save!

g2item3 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

g2item4 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

g2item5 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

g2item6 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)

# project 2
arch2 = Project.create!(
  title:'Architecture 9', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch2_item1 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)


arch2_item2 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch2.thumbnail_url = arch2_item2.image.url 
arch2.save!


arch2_item3 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch2_item4 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch2_item5 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch2_item6 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch2_item7 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)

# project 3 
color2 = Project.create!(
  title:'Fun with Hues 8', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color2_item1 = Item.create!(
  project_id: color2.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)


color2_item2 = Item.create!(
  project_id: color2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)
color2.thumbnail_url = color2_item2.image.url 
color2.save!

color2_item3 = Item.create!(
  project_id: color2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color2_item4 = Item.create!(
  project_id: color2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color2_item5 = Item.create!(
  project_id: color2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color2_item6 = Item.create!(
  project_id: color2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color2_item7 = Item.create!(
  project_id: color2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)

# project 4
fantasy2 = Project.create!(
  title:'Explore Your World 2', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy2_item1 = Item.create!(
  project_id: fantasy2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)


fantasy2_item2 = Item.create!(
  project_id: fantasy2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)
fantasy2.thumbnail_url = fantasy2_item2.image.url 
fantasy2.save!

fantasy2_item3 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy2_item4 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy2_item5 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy3.jpg')
)

# project 5
weird2 = Project.create!(
  title:'Whimsical 2', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird2_item1 = Item.create!(
  project_id: weird2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)


weird2_item2 = Item.create!(
  project_id: weird2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)
weird2.thumbnail_url = weird2_item2.image.url 
weird2.save!

weird2_item3 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird2_item4 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird2_item5 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird2_item6 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird2_item7 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)

# project 6
landscape2 = Project.create!(
  title:'Over There 2', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape2_item1 = Item.create!(
  project_id: landscape2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)


landscape2_item2 = Item.create!(
  project_id: landscape2.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)
landscape2.thumbnail_url = landscape2_item2.image.url 
landscape2.save!

landscape2_item3 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape2_item4 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape2_item5 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape2_item6 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)

landscape2_item7 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape2_item8 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)

# project 1
glass3 = Project.create!(
  title:'Spiral Glass 12', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g3item1 = Item.create!(
  project_id: glass3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)


g3item2 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

g3item3 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

g3item4 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

g3item5 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

g3item6 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)
glass3.thumbnail_url = g3item3.image.url 
glass3.save!

# project 2
arch3 = Project.create!(
  title:'Architecture A', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch3_item1 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)


arch3_item2 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch3_item3 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch3_item4 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch3_item5 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch3_item6 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch3_item7 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)
arch3.thumbnail_url = arch3_item3.image.url 
arch3.save!

# project 3 
color3 = Project.create!(
  title:'Fun with Hues 2', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color3_item1 = Item.create!(
  project_id: color3.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)


color3_item2 = Item.create!(
  project_id: color3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)

color3_item3 = Item.create!(
  project_id: color3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color3_item4 = Item.create!(
  project_id: color3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color3_item5 = Item.create!(
  project_id: color3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color3_item6 = Item.create!(
  project_id: color3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color3_item7 = Item.create!(
  project_id: color3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)
color3.thumbnail_url = color3_item3.image.url 
color3.save!

# project 4
fantasy3 = Project.create!(
  title:'Explore Your World 3', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy3_item1 = Item.create!(
  project_id: fantasy3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)


fantasy3_item2 = Item.create!(
  project_id: fantasy3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)

fantasy3_item3 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy3_item4 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy3_item5 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy3.jpg')
)
fantasy3.thumbnail_url = fantasy3_item3.image.url 
fantasy3.save!

# project 5
weird3 = Project.create!(
  title:'Whimsical 3', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird3_item1 = Item.create!(
  project_id: weird3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)


weird3_item2 = Item.create!(
  project_id: weird3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)

weird3_item3 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird3_item4 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird3_item5 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird3_item6 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird3_item7 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)
weird3.thumbnail_url = weird3_item3.image.url 
weird3.save!

# project 6
landscape3 = Project.create!(
  title:'Over There 3', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape3_item1 = Item.create!(
  project_id: landscape3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)


landscape3_item2 = Item.create!(
  project_id: landscape3.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)

landscape3_item3 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape3_item4 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape3_item5 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape3_item6 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)

landscape3_item7 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape3_item8 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)
landscape3.thumbnail_url = landscape3_item3.image.url 
landscape3.save!

# project 1
glass4 = Project.create!(
  title:'Spiral Glass 8', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g4item1 = Item.create!(
  project_id: glass4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)


g4item2 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

g4item3 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

g4item4 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

g4item5 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

g4item6 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)
glass4.thumbnail_url = g4item4.image.url 
glass4.save!

# project 2
arch4 = Project.create!(
  title:'Architecture 4', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch4_item1 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)


arch4_item2 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch4_item3 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch4_item4 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch4_item5 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch4_item6 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch4_item7 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)
arch4.thumbnail_url = arch4_item4.image.url 
arch4.save!

# project 3 
color4 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color4_item1 = Item.create!(
  project_id: color4.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)


color4_item2 = Item.create!(
  project_id: color4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)

color4_item3 = Item.create!(
  project_id: color4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color4_item4 = Item.create!(
  project_id: color4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color4_item5 = Item.create!(
  project_id: color4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color4_item6 = Item.create!(
  project_id: color4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color4_item7 = Item.create!(
  project_id: color4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)
color4.thumbnail_url = color4_item4.image.url 
color4.save!

# project 4
fantasy4 = Project.create!(
  title:'Explore Your World 4', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy4_item1 = Item.create!(
  project_id: fantasy4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)


fantasy4_item2 = Item.create!(
  project_id: fantasy4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)

fantasy4_item3 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy4_item4 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy4_item5 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)
fantasy4.thumbnail_url = fantasy4_item4.image.url 
fantasy4.save!

# project 5
weird4 = Project.create!(
  title:'Whimsical 4', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird4_item1 = Item.create!(
  project_id: weird4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)


weird4_item2 = Item.create!(
  project_id: weird4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)

weird4_item3 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird4_item4 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird4_item5 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird4_item6 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird4_item7 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)
weird4.thumbnail_url = weird4_item4.image.url 
weird4.save!

# project 6
landscape4 = Project.create!(
  title:'Over There 4', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape4_item1 = Item.create!(
  project_id: landscape4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)


landscape4_item2 = Item.create!(
  project_id: landscape4.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)

landscape4_item3 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape4_item4 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape4_item5 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape4_item6 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)

landscape4_item7 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape4_item8 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)
landscape4.thumbnail_url = landscape4_item4.image.url 
landscape4.save!

# project 1
glass5 = Project.create!(
  title:'Spiral Glass 9', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g5item1 = Item.create!(
  project_id: glass5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)


g5item2 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

g5item3 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

g5item4 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

g5item5 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

g5item6 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)
glass5.thumbnail_url = g5item5.image.url 
glass5.save!

# project 2
arch5 = Project.create!(
  title:'Architecture 5', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch5_item1 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)


arch5_item2 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch5_item3 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch5_item4 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch5_item5 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch5_item6 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch5_item7 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)
arch5.thumbnail_url = arch5_item5.image.url 
arch5.save!

# project 3 
color5 = Project.create!(
  title:'Fun with Hues 3', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color5_item1 = Item.create!(
  project_id: color5.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)


color5_item2 = Item.create!(
  project_id: color5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)

color5_item3 = Item.create!(
  project_id: color5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color5_item4 = Item.create!(
  project_id: color5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color5_item5 = Item.create!(
  project_id: color5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color5_item6 = Item.create!(
  project_id: color5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color5_item7 = Item.create!(
  project_id: color5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)
color5.thumbnail_url = color5_item5.image.url 
color5.save!

# project 4
fantasy5 = Project.create!(
  title:'Explore Your World 5', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy5_item1 = Item.create!(
  project_id: fantasy5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)


fantasy5_item2 = Item.create!(
  project_id: fantasy5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy3.jpg')
)

fantasy5_item3 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy5_item4 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy5_item5 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)
fantasy5.thumbnail_url = fantasy5_item5.image.url 
fantasy5.save!

# project 5
weird5 = Project.create!(
  title:'Whimsical 5', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird5_item1 = Item.create!(
  project_id: weird5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)


weird5_item2 = Item.create!(
  project_id: weird5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)

weird5_item3 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird5_item4 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird5_item5 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird5_item6 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird5_item7 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)
weird5.thumbnail_url = weird5_item5.image.url 
weird5.save!

# project 6
landscape5 = Project.create!(
  title:'Over There 5', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape5_item1 = Item.create!(
  project_id: landscape5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)


landscape5_item2 = Item.create!(
  project_id: landscape5.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)

landscape5_item3 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape5_item4 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape5_item5 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape5_item6 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)

landscape5_item7 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape5_item8 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)
landscape5.thumbnail_url = landscape5_item4.image.url 
landscape5.save!

# project 1
glass6 = Project.create!(
  title:'Spiral Glass 3', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g6item1 = Item.create!(
  project_id: glass6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1.jpg')
)


g6item2 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_1D1.jpg')
)

g6item3 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2.jpg')
)

g6item4 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_2D2.jpg')
)

g6item5 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3.jpg')
)

g6item6 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/Glasswave_3D2.jpg')
)
glass6.thumbnail_url = g6item6.image.url 
glass6.save!

# project 2
arch6 = Project.create!(
  title:'Architecture 13', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch6_item1 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/wood-windows.jpeg')
)


arch6_item2 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/building.jpeg')
)

arch6_item3 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/circular-tower.jpeg')
)

arch6_item4 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/curvy-building.jpeg')
)

arch6_item5 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glass-windows.jpeg')
)

arch6_item6 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-thing.jpeg')
)

arch6_item7 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spiral-staircase.jpeg')
)
arch6.thumbnail_url = arch6_item6.image.url 
arch6.save!

# project 3 
color6 = Project.create!(
  title:'Fun with Hues 9', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color6_item1 = Item.create!(
  project_id: color6.id, 
  caption:'Pool', 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pineapple.jpeg')
)


color6_item2 = Item.create!(
  project_id: color6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/paper.png')
)

color6_item3 = Item.create!(
  project_id: color6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/purple-smoke.jpeg')
)

color6_item4 = Item.create!(
  project_id: color6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/color-pencils.jpeg')
)

color6_item5 = Item.create!(
  project_id: color6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/pexels-crayons.jpeg')
)

color6_item6 = Item.create!(
  project_id: color6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/redpaint.jpeg')
)

color6_item7 = Item.create!(
  project_id: color6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rainbow-parachute.jpeg')
)
color6.thumbnail_url = color6_item6.image.url 
color6.save!

# project 4
fantasy6 = Project.create!(
  title:'Explore Your World 6', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy6_item1 = Item.create!(
  project_id: fantasy6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/ufo.jpg')
)


fantasy6_item2 = Item.create!(
  project_id: fantasy6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy3.jpg')
)

fantasy6_item3 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy-2.jpg')
)

fantasy6_item4 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/book.jpg')
)

fantasy6_item5 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/fantasy4.jpg')
)
fantasy6.thumbnail_url = fantasy6_item1.image.url 
fantasy6.save!

# project 5
weird6 = Project.create!(
  title:'Whimsical 6', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird6_item1 = Item.create!(
  project_id: weird6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/further_future.JPG')
)


weird6_item2 = Item.create!(
  project_id: weird6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/night-house.jpg')
)

weird6_item3 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/raven.jpg')
)

weird6_item4 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/butterfly-face.jpg')
)

weird6_item5 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/body.jpg')
)

weird6_item6 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/spider-eyes.jpg')
)

weird6_item7 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/umbrella.jpeg')
)
weird6.thumbnail_url = weird6_item6.image.url 
weird6.save!

# project 6
landscape6 = Project.create!(
  title:'Over There 6', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape6_item1 = Item.create!(
  project_id: landscape6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/california.jpg')
)


landscape6_item2 = Item.create!(
  project_id: landscape6.id, 
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/glacier.jpg')
)

landscape6_item3 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland-fox.jpg')
)

landscape6_item4 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland.jpg')
)

landscape6_item5 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/iceland2.jpg')
)

landscape6_item6 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/lake-irene.jpg')
)

landscape6_item7 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/mountain-landscape.jpg')
)

landscape6_item8 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('//s3-us-west-1.amazonaws.com/app-enchant-dev/dev/images/original/rough-horn.jpg')
)

landscape6.thumbnail_url = landscape6_item6.image.url 
landscape6.save!
