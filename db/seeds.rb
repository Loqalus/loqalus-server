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

events_list = [
	["event1", "description of event 1", "2007-11-19T02:32:44-06:00","1", 40.503786, -88.995268, false, "", 0],
	["event2", "description of event 2", "2007-12-19T08:47:48-06:00","2", 40.504349, -89.001285, true, "https://www.eventbrite.com/e/bloomington-high-school-class-of-06-reunion-tickets-22336664565?aff=ehomecard", 0],
	["event3", "description of event 3", "2007-11-12T09:37:48-06:00","2", 40.507057, -88.995706, false, "", 0],
	["event4", "description of event 4", "2007-11-20T08:27:48-06:00","2", 40.508639, -88.985127, true, "http://www.meetup.com/BN-Bootstrappers/", 0]
]

campaign_list = [
	["campaign1", "description of campaign 1", "1", 40.508770, -88.998281, false, "", 1],
	["campaign2", "description of campaign 2", "2", 40.507269, -89.001049, true, "https://www.indiegogo.com/projects/asap-connect-the-future-of-usb-cables", 1],
	["campaign3", "description of campaign 3", "2", 40.507481, -88.998431, false, "", 1],
	["campaign4", "description of campaign 4", "2", 40.507024, -89.000705, true, "https://www.kickstarter.com/projects/coolminiornot/massive-darkness?ref=home_popular", 1]
]

convo_list = [
	["convo1", "description of convo 1", "1", 40.508346, -88.996264, false, "", 2],
	["convo2", "description of convo 2", "2", 40.507546, -88.997787, false, "", 2],
	["convo3", "description of convo 3", "2", 40.506616, -88.999439, false, "", 2],
	["convo4", "description of convo 4", "2", 40.506225, -88.998452, false, "", 2]
]

# tags = [
# 	["dogs"],
# 	["politics"],
# 	["art"],
# 	["melee"]
# ]


# tags.each do |name|
# 	Tag.create(name: name)
# end


convo_list.each do |title, description, user_id, latitude, longitude , in_house, link, action_type|
  Conversation.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
end


campaign_list.each do |title, description, user_id, latitude, longitude , in_house, link, action_type|
  Campaign.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
end


events_list.each do |title, description, start_date, user_id, latitude, longitude , in_house, link, action_type|
  Event.create( title: title, description: description, start_date: start_date, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
end


user_list.each do |email, password, password_confirmation|
  User.create( email: email, password: password, password_confirmation: password_confirmation )
end