# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |portfolio|
  Portfolio.create!(
    title: "haho",
    subtitle: "hoooooooo",
    body: "nice",
    main_image: "http://via.placeholder.com/350x150",
    thumb_image: "http://via.placeholder.com/350x150"

  )
end


2.times do |portfolio|
  Portfolio.create!(
      title: "haho",
      subtitle: "angular",
      body: "angualr is good",
      main_image: "http://via.placeholder.com/350x150",
      thumb_image: "http://via.placeholder.com/350x150")
end
