# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "boblobloaw@law.com", "brochacho", "brochacho" ],
  [ "Allove1950@gustr.com", "brodudeman", "brodudeman" ],
  [ "mangbro@jourrapide.com", "bibbidybo", "bibbidybo" ],
  [ "Netherlands@gmail.com", "howdoyoudo", "howdoyoudo" ]
]

user_list.each do |email, password, password_confirmation|
  User.create( email: email, password: password, password_confirmation: password_confirmation )
end