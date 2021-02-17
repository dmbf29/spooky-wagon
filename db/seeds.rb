puts "Cleaning the db..."
House.destroy_all

puts "Creating houses...."

urls = ['https://i.ytimg.com/vi/gY_i1LcDObU/maxresdefault.jpg', 'https://fandomwire.com/wp-content/uploads/2021/01/harry-potter-streaming-guide.jpg', 'https://bgr.com/wp-content/uploads/2019/12/harry-potter.jpg?quality=70&strip=all&w=782']

urls.each do |url|
  House.create!(
    name: Faker::Movies::HarryPotter.house,
    banner_url: url
  )
end

puts "...created #{House.count} houses"
