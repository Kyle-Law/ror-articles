# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'Kyle')

['HTML/CSS','Ruby/Rails','JavaScript','React'].each_with_index do |category,index|
  Category.create(name: category, priority: index+1 );
  Article.create!(title:"Here is a title for #{category}",text:"Here is a random description text for #{category}",category_id:index+1,creator_id:1)
end