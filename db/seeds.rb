puts "Cleaning the db..."
House.destroy_all

puts "Creating houses...."

urls = ['https://i.ytimg.com/vi/gY_i1LcDObU/maxresdefault.jpg', 'https://fandomwire.com/wp-content/uploads/2021/01/harry-potter-streaming-guide.jpg', 'https://bgr.com/wp-content/uploads/2019/12/harry-potter.jpg?quality=70&strip=all&w=782']
names = []

until names.length == urls.length
  names << Faker::Movies::HarryPotter.house
  names.uniq!
end

urls.each_with_index do |url, index|
  House.create!(
    name: names[index],
    banner_url: url
  )
end

puts "...created #{House.count} houses"


house = House.first

Monster.create!(
  name: 'Sully',
  image_url: 'https://static01.nyt.com/images/2016/09/09/arts/09SULLY/09SULLY-superJumbo.jpg',
  species: 'pilot',
  house: house
)

Monster.create!(
  name: 'Skeletor',
  image_url: 'https://www.denofgeek.com/wp-content/uploads/2014/06/skeletor.jpg?fit=620%2C368',
  species: 'skeleton',
  house: house
)

Monster.create!(
  name: 'Cookie Monster',
  image_url: 'https://i.ytimg.com/vi/9rrfjtm7RGE/maxresdefault.jpg',
  species: 'blue',
  house: house
)

Monster.create!(
  name: 'Godzilla',
  image_url: 'https://m.media-amazon.com/images/M/MV5BZTI4YTE0YzctODRlMy00NDQ3LWJiZjgtNmE0MTc2YzhiOTM4XkEyXkFqcGdeQXVyNzU1NzE3NTg@._V1_CR0,45,480,270_AL_UX477_CR0,0,477,268_AL_.jpg',
  species: 'sea monster',
  house: house
)

Monster.create!(
  name: 'Slimer',
  image_url: 'https://i1.wp.com/fairbrother.me.uk/wp-content/uploads/2020/04/ghostbusters-slimer-photo-1.jpg?resize=1100%2C733&ssl=1',
  species: 'ghost',
  house: house
)

Monster.create!(
  name: 'Yoda',
  image_url: 'https://observer.com/wp-content/uploads/sites/2/2020/05/yoda-art-observer.jpg?quality=80',
  species: 'jedi',
  house: house
)

Monster.create!(
  name: 'Shrek',
  image_url: 'https://www.courant.com/resizer/D9qmAnzR8PY5q-GBdUBBVuNVUTs=/415x311/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/NTWCZKYTDJBI7CASRJ32F2RN6E.jpg',
  species: 'ogre',
  house: house
)

Monster.create!(
  name: 'Boo',
  image_url: 'https://www.seekpng.com/png/detail/211-2118031_big-boo-nsmbdiy-boo-ghost-super-mario.png',
  species: 'ghost',
  house: house
)

Monster.create!(
  name: 'Totoro',
  image_url: 'https://static.highsnobiety.com/thumbor/Z6PUedX0SRIzwFNFqMandGXHyDk=/1600x1067/static.highsnobiety.com/wp-content/uploads/2020/12/27130155/loewe-totoro-collaboration-main.jpg',
  species: 'mut',
  house: house
)
