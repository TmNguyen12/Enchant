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
  image: File.new('../stock_photos/profile/Inara-Firefly.jpg')
  )

Helga = User.create!(
  username:'Helga', 
  password:'password',
  fname:'Helga', 
  lname:'Hufflepuff', 
  image: File.new('../stock_photos/profile/Helga-Hufflepuff.jpg')
  )

Kvothe = User.create!(
  username:'Kvothe', 
  password:'password',
  fname:'Kvothe', 
  lname:'son of Arliden', 
  image: File.new('../stock_photos/profile/Kvothe.jpg')
  )

Felurian = User.create!(
  username:'Felurian', 
  password:'password',
  fname:'Felurian', 
  lname:'', 
  image: File.new('../stock_photos/profile/Felurian.jpg')
  )

Vin = User.create!(
  username:'Vin', 
  password:'password',
  fname:'Vin', 
  lname:'Lady Mistborn', 
  image: File.new('../stock_photos/profile/Ellen_Page.jpg')
  )

Albus = User.create!(
  username:'Albus', 
  password:'password',
  fname:'Albus', 
  lname:'Dumbledore', 
  image: File.new('../stock_photos/profile/Dumbledore.jpg')
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
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass1.thumbnail_url = item1.image.url 

item2 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

item3 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

item4 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

item5 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

item6 = Item.create!(
  project_id: glass1.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)
# project 2
arch = Project.create!(
  title:'Architecture', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch-item1 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch.thumbnail_url = arch-item1.image.url 

arch-item2 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch-item3 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch-item4 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch-item5 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch-item6 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch-item7 = Item.create!(
  project_id: arch.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)
# project 3 
color = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color-item1 = Item.create!(
  project_id: color.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color.thumbnail_url = color-item1.image.url 

color-item2 = Item.create!(
  project_id: color.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color-item3 = Item.create!(
  project_id: color.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color-item4 = Item.create!(
  project_id: color.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color-item5 = Item.create!(
  project_id: color.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color-item6 = Item.create!(
  project_id: color.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color-item7 = Item.create!(
  project_id: color.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy-item1 = Item.create!(
  project_id: fantasy.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy.thumbnail_url = fantasy-item1.image.url 

fantasy-item2 = Item.create!(
  project_id: fantasy.id, 
  image:  File.new('../stock_photos/fantasy/fantasy4.jpg')
)

fantasy-item3 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy-item4 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy-item5 = Item.create!(
  project_id: fantasy.id,  
  image:  File.new('../stock_photos/fantasy/fantasy3.jpeg')
)

# project 5
weird = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird-item1 = Item.create!(
  project_id: weird.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird.thumbnail_url = weird-item1.image.url 

weird-item2 = Item.create!(
  project_id: weird.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird-item3 = Item.create!(
  project_id: weird.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird-item4 = Item.create!(
  project_id: weird.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird-item5 = Item.create!(
  project_id: weird.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird-item6 = Item.create!(
  project_id: weird.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird-item7 = Item.create!(
  project_id: weird.id,  
  image:  File.new('../stock_photos/color/color1/umbrella.jpeg')
)

# project 6
landscape = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape-item1 = Item.create!(
  project_id: landscape.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape.thumbnail_url = landscape-item1.image.url 

landscape-item2 = Item.create!(
  project_id: landscape.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape-item3 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape-item4 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape-item5 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape-item6 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape-item7 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/color/color1/mountain-landscape.jpeg')
)

landscape-item8 = Item.create!(
  project_id: landscape.id,  
  image:  File.new('../stock_photos/color/color1/rough-horn.jpeg')
)

# project 1
glass2 = Project.create!(
  title:'Spiral Glass 1', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g2item1 = Item.create!(
  project_id: glass2.id, 
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass2.thumbnail_url = g2item2.image.url 

g2item2 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

g2item3 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

g2item4 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

g2item5 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

g2item6 = Item.create!(
  project_id: glass2.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)

# project 2
arch2 = Project.create!(
  title:'Architecture', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch2-item1 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch2.thumbnail_url = arch2-item2.image.url 

arch2-item2 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch2-item3 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch2-item4 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch2-item5 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch2-item6 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch2-item7 = Item.create!(
  project_id: arch2.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)

# project 3 
color2 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color2-item1 = Item.create!(
  project_id: color2.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color2.thumbnail_url = color2-item2.image.url 

color2-item2 = Item.create!(
  project_id: color2.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color2-item3 = Item.create!(
  project_id: color2.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color2-item4 = Item.create!(
  project_id: color2.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color2-item5 = Item.create!(
  project_id: color2.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color2-item6 = Item.create!(
  project_id: color2.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color2-item7 = Item.create!(
  project_id: color2.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy2 = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy2-item1 = Item.create!(
  project_id: fantasy2.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy2.thumbnail_url = fantasy2-item2.image.url 

fantasy2-item2 = Item.create!(
  project_id: fantasy2.id, 
  image:  File.new('../stock_photos/fantasy/fantasy4.jpg')
)

fantasy2-item3 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy2-item4 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy2-item5 = Item.create!(
  project_id: fantasy2.id,  
  image:  File.new('../stock_photos/fantasy/fantasy3.jpeg')
)

# project 5
weird2 = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird2-item1 = Item.create!(
  project_id: weird2.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird2.thumbnail_url = weird2-item2.image.url 

weird2-item2 = Item.create!(
  project_id: weird2.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird2-item3 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird2-item4 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird2-item5 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird2-item6 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird2-item7 = Item.create!(
  project_id: weird2.id,  
  image:  File.new('../stock_photos/weird/umbrella.jpeg')
)

# project 6
landscape2 = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape2-item1 = Item.create!(
  project_id: landscape2.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape2.thumbnail_url = landscape2-item2.image.url 

landscape2-item2 = Item.create!(
  project_id: landscape2.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape2-item3 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape2-item4 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape2-item5 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape2-item6 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape2-item7 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/mountain-landscape.jpeg')
)

landscape2-item8 = Item.create!(
  project_id: landscape2.id,  
  image:  File.new('../stock_photos/landscape/rough-horn.jpeg')
)

# project 1
glass3 = Project.create!(
  title:'Spiral Glass 3', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g3item1 = Item.create!(
  project_id: glass3.id, 
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass3.thumbnail_url = g3item3.image.url 

g3item2 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

g3item3 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

g3item4 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

g3item5 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

g3item6 = Item.create!(
  project_id: glass3.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)

# project 2
arch3 = Project.create!(
  title:'Architecture', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch3-item1 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch3.thumbnail_url = arch3-item3.image.url 

arch3-item2 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch3-item3 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch3-item4 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch3-item5 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch3-item6 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch3-item7 = Item.create!(
  project_id: arch3.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)

# project 3 
color3 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color3-item1 = Item.create!(
  project_id: color3.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color3.thumbnail_url = color3-item3.image.url 

color3-item2 = Item.create!(
  project_id: color3.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color3-item3 = Item.create!(
  project_id: color3.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color3-item4 = Item.create!(
  project_id: color3.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color3-item5 = Item.create!(
  project_id: color3.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color3-item6 = Item.create!(
  project_id: color3.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color3-item7 = Item.create!(
  project_id: color3.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy3 = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy3-item1 = Item.create!(
  project_id: fantasy3.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy3.thumbnail_url = fantasy3-item3.image.url 

fantasy3-item2 = Item.create!(
  project_id: fantasy3.id, 
  image:  File.new('../stock_photos/fantasy/fantasy4.jpg')
)

fantasy3-item3 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy3-item4 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy3-item5 = Item.create!(
  project_id: fantasy3.id,  
  image:  File.new('../stock_photos/fantasy/fantasy3.jpeg')
)

# project 5
weird3 = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird3-item1 = Item.create!(
  project_id: weird3.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird3.thumbnail_url = weird3-item3.image.url 

weird3-item2 = Item.create!(
  project_id: weird3.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird3-item3 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird3-item4 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird3-item5 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird3-item6 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird3-item7 = Item.create!(
  project_id: weird3.id,  
  image:  File.new('../stock_photos/weird/umbrella.jpeg')
)

# project 6
landscape3 = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape3-item1 = Item.create!(
  project_id: landscape3.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape3.thumbnail_url = landscape3-item3.image.url 

landscape3-item2 = Item.create!(
  project_id: landscape3.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape3-item3 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape3-item4 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape3-item5 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape3-item6 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape3-item7 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/mountain-landscape.jpeg')
)

landscape3-item8 = Item.create!(
  project_id: landscape3.id,  
  image:  File.new('../stock_photos/landscape/rough-horn.jpeg')
)

# project 1
glass4 = Project.create!(
  title:'Spiral Glass 3', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g4item1 = Item.create!(
  project_id: glass4.id, 
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass4.thumbnail_url = g4item4.image.url 

g4item2 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

g4item3 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

g4item4 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

g4item5 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

g4item6 = Item.create!(
  project_id: glass4.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)

# project 2
arch4 = Project.create!(
  title:'Architecture 4', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch4-item1 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch4.thumbnail_url = arch4-item4.image.url 

arch4-item2 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch4-item3 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch4-item4 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch4-item5 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch4-item6 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch4-item7 = Item.create!(
  project_id: arch4.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)

# project 3 
color4 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color4-item1 = Item.create!(
  project_id: color4.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color4.thumbnail_url = color4-item4.image.url 

color4-item2 = Item.create!(
  project_id: color4.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color4-item3 = Item.create!(
  project_id: color4.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color4-item4 = Item.create!(
  project_id: color4.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color4-item5 = Item.create!(
  project_id: color4.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color4-item6 = Item.create!(
  project_id: color4.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color4-item7 = Item.create!(
  project_id: color4.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy4 = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy4-item1 = Item.create!(
  project_id: fantasy4.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy4.thumbnail_url = fantasy4-item4.image.url 

fantasy4-item2 = Item.create!(
  project_id: fantasy4.id, 
  image:  File.new('../stock_photos/fantasy/fantasy4.jpg')
)

fantasy4-item3 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy4-item4 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy4-item5 = Item.create!(
  project_id: fantasy4.id,  
  image:  File.new('../stock_photos/fantasy/fantasy4.jpeg')
)

# project 5
weird4 = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird4-item1 = Item.create!(
  project_id: weird4.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird4.thumbnail_url = weird4-item4.image.url 

weird4-item2 = Item.create!(
  project_id: weird4.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird4-item3 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird4-item4 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird4-item5 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird4-item6 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird4-item7 = Item.create!(
  project_id: weird4.id,  
  image:  File.new('../stock_photos/weird/umbrella.jpeg')
)

# project 6
landscape4 = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape4-item1 = Item.create!(
  project_id: landscape4.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape4.thumbnail_url = landscape4-item4.image.url 

landscape4-item2 = Item.create!(
  project_id: landscape4.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape4-item3 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape4-item4 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape4-item5 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape4-item6 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape4-item7 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/mountain-landscape.jpeg')
)

landscape4-item8 = Item.create!(
  project_id: landscape4.id,  
  image:  File.new('../stock_photos/landscape/rough-horn.jpeg')
)

# project 1
glass5 = Project.create!(
  title:'Spiral Glass 3', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g5item1 = Item.create!(
  project_id: glass5.id, 
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass5.thumbnail_url = g5item5.image.url 

g5item2 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

g5item3 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

g5item4 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

g5item5 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

g5item6 = Item.create!(
  project_id: glass5.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)

# project 2
arch5 = Project.create!(
  title:'Architecture 4', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch5-item1 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch5.thumbnail_url = arch5-item5.image.url 

arch5-item2 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch5-item3 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch5-item4 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch5-item5 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch5-item6 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch5-item7 = Item.create!(
  project_id: arch5.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)

# project 3 
color5 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color5-item1 = Item.create!(
  project_id: color5.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color5.thumbnail_url = color5-item5.image.url 

color5-item2 = Item.create!(
  project_id: color5.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color5-item3 = Item.create!(
  project_id: color5.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color5-item4 = Item.create!(
  project_id: color5.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color5-item5 = Item.create!(
  project_id: color5.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color5-item6 = Item.create!(
  project_id: color5.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color5-item7 = Item.create!(
  project_id: color5.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy5 = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy5-item1 = Item.create!(
  project_id: fantasy5.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy5.thumbnail_url = fantasy5-item5.image.url 

fantasy5-item2 = Item.create!(
  project_id: fantasy5.id, 
  image:  File.new('../stock_photos/fantasy/fantasy5.jpg')
)

fantasy5-item3 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy5-item4 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy5-item5 = Item.create!(
  project_id: fantasy5.id,  
  image:  File.new('../stock_photos/fantasy/fantasy4.jpeg')
)

# project 5
weird5 = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird5-item1 = Item.create!(
  project_id: weird5.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird5.thumbnail_url = weird5-item5.image.url 

weird5-item2 = Item.create!(
  project_id: weird5.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird5-item3 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird5-item4 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird5-item5 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird5-item6 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird5-item7 = Item.create!(
  project_id: weird5.id,  
  image:  File.new('../stock_photos/weird/umbrella.jpeg')
)

# project 6
landscape5 = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape5-item1 = Item.create!(
  project_id: landscape5.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape5.thumbnail_url = landscape5-item4.image.url 

landscape5-item2 = Item.create!(
  project_id: landscape5.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape5-item3 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape5-item4 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape5-item5 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape5-item6 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape5-item7 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/mountain-landscape.jpeg')
)

landscape5-item8 = Item.create!(
  project_id: landscape5.id,  
  image:  File.new('../stock_photos/landscape/rough-horn.jpeg')
)

# project 1
glass6 = Project.create!(
  title:'Spiral Glass 3', 
  description:'Ariweinkle', 
  category: 'Art', 
  author_id: Inara.id
)

g6item1 = Item.create!(
  project_id: glass6.id, 
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1.jpg')
)

glass6.thumbnail_url = g6item6.image.url 

g6item2 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_1D1.jpg')
)

g6item3 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2.jpg')
)

g6item4 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_2D2.jpg')
)

g6item5 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3.jpg')
)

g6item6 = Item.create!(
  project_id: glass6.id,  
  image:  File.new('../stock_photos/ariweinkle/glass1/Glasswave_3D2.jpg')
)

# project 2
arch6 = Project.create!(
  title:'Architecture 4', 
  description:'Pretty Buildings', 
  category: 'Photography', 
  author_id: Kvothe.id
)

arch6-item1 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/wood-windows.jpeg')
)

arch6.thumbnail_url = arch6-item6.image.url 

arch6-item2 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/building.jpeg')
)

arch6-item3 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/circular-tower.jpeg')
)

arch6-item4 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/curvy-building.jpeg')
)

arch6-item5 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/glass-windows.jpeg')
)

arch6-item6 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/spiral-thing.jpeg')
)

arch6-item7 = Item.create!(
  project_id: arch6.id,  
  image:  File.new('../stock_photos/architecture/spiral-staircase.jpeg')
)

# project 3 
color6 = Project.create!(
  title:'Fun with Hues', 
  description:'Color', 
  category: 'Photography', 
  author_id: Helga.id
)

color6-item1 = Item.create!(
  project_id: color6.id, 
  caption:'Pool', 
  image:  File.new('../stock_photos/color/color1/pineapple.jpeg')
)

color6.thumbnail_url = color6-item6.image.url 

color6-item2 = Item.create!(
  project_id: color6.id, 
  image:  File.new('../stock_photos/color/color1/paper.png')
)

color6-item3 = Item.create!(
  project_id: color6.id,  
  image:  File.new('../stock_photos/color/color1/tower.jpeg')
)

color6-item4 = Item.create!(
  project_id: color6.id,  
  image:  File.new('../stock_photos/color/color1/color-pencils.jpeg')
)

color6-item5 = Item.create!(
  project_id: color6.id,  
  image:  File.new('../stock_photos/color/color1/pexels-crayons.jpeg')
)

color6-item6 = Item.create!(
  project_id: color6.id,  
  image:  File.new('../stock_photos/color/color1/redpaint.jpeg')
)

color6-item7 = Item.create!(
  project_id: color6.id,  
  image:  File.new('../stock_photos/color/color1/rainbow-parachute.jpeg')
)

# project 4
fantasy6 = Project.create!(
  title:'Explore Your World', 
  description:'Fantasy', 
  category: 'Art', 
  author_id: Helga.id
)

fantasy6-item1 = Item.create!(
  project_id: fantasy6.id, 
  image:  File.new('../stock_photos/fantasy/ufo.jpg')
)

fantasy6.thumbnail_url = fantasy6-item1.image.url 

fantasy6-item2 = Item.create!(
  project_id: fantasy6.id, 
  image:  File.new('../stock_photos/fantasy/fantasy6.jpg')
)

fantasy6-item3 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('../stock_photos/fantasy/fantasy-2.jpg')
)

fantasy6-item4 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('../stock_photos/fantasy/book.jpg')
)

fantasy6-item5 = Item.create!(
  project_id: fantasy6.id,  
  image:  File.new('../stock_photos/fantasy/fantasy4.jpeg')
)

# project 5
weird6 = Project.create!(
  title:'...', 
  description:'', 
  category: 'Photography', 
  author_id: Albus.id
)

weird6-item1 = Item.create!(
  project_id: weird6.id, 
  image:  File.new('../stock_photos/weird/further_future.JPG')
)

weird6.thumbnail_url = weird6-item6.image.url 

weird6-item2 = Item.create!(
  project_id: weird6.id, 
  image:  File.new('../stock_photos/weird/night-house.jpg')
)

weird6-item3 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('../stock_photos/weird/raven.jpg')
)

weird6-item4 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('../stock_photos/weird/butterfly-face.jpg')
)

weird6-item5 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('../stock_photos/weird/body.jpg')
)

weird6-item6 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('../stock_photos/weird/spider-eyes.jpg')
)

weird6-item7 = Item.create!(
  project_id: weird6.id,  
  image:  File.new('../stock_photos/weird/umbrella.jpeg')
)

# project 6
landscape6 = Project.create!(
  title:'Over There', 
  description:'', 
  category: 'Art', 
  author_id: Albus.id
)

landscape6-item1 = Item.create!(
  project_id: landscape6.id, 
  image:  File.new('../stock_photos/landscape/california.jpg')
)

landscape6.thumbnail_url = landscape6-item6.image.url 

landscape6-item2 = Item.create!(
  project_id: landscape6.id, 
  image:  File.new('../stock_photos/landscape/glacier.jpg')
)

landscape6-item3 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/iceland-fox.jpg')
)

landscape6-item4 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/iceland.jpg')
)

landscape6-item5 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/iceland2.jpg')
)

landscape6-item6 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/lake-irene.jpg')
)

landscape6-item7 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/mountain-landscape.jpeg')
)

landscape6-item8 = Item.create!(
  project_id: landscape6.id,  
  image:  File.new('../stock_photos/landscape/rough-horn.jpeg')
)