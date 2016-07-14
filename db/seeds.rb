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
	["Maecenas", "Lorem ipsum quis semper rutrum viverra ipsum.
", "2007-11-19T02:32:44-06:00","1", 40.503786, -88.995268, false, "", 0],
	["Luctus donec curabitur.", "Semper curabitur luctus donec purus auctor odio suspendisse, elit bibendum dolor lacus hac suspendisse nisi, felis senectus eleifend vitae at vel erat interdum suscipit aliquet.", "2007-12-19T08:47:48-06:00","2", 40.504349, -89.001285, true, "https://www.eventbrite.com/e/bloomington-high-school-class-of-06-reunion-tickets-22336664565?aff=ehomecard", 0],
	["Scelerisque integer.", "Gravida vel iaculis scelerisque integer metus phasellus urna adipiscing nostra vivamus nulla, aenean ultrices nostra cubilia feugiat senectus himenaeos molestie lacinia vestibulum.

", "2007-11-12T09:37:48-06:00","2", 40.507057, -88.995706, false, "", 0],
	["Mi phasellus nostra.", "Taciti dictumst nec massa dui vestibulum facilisis odio pellentesque rutrum enim lacus mattis nulla ullamcorper, mi phasellus nostra velit aptent lorem adipiscing imperdiet eu suscipit volutpat mollis hac.", "2007-11-20T08:27:48-06:00","2", 40.508639, -88.985127, true, "http://www.meetup.com/BN-Bootstrappers/", 0]
]

campaign_list = [
	["Fringilla maecenas", "Fringilla maecenas varius suscipit maecenas habitasse iaculis maecenas purus malesuada, nostra luctus feugiat accumsan fermentum sapien risus tellus, vitae etiam cras ad mollis mi porta fames.", "1", 40.508770, -88.998281, false, "", 1],
	["Rutrum tincidunt magna luctus.", "Rutrum tincidunt magna luctus arcu amet massa sed, suscipit vulputate morbi senectus conubia class volutpat, tellus lacinia euismod curae laoreet eros senectus ultrices tellus a aenean sodales consequat.

", "2", 40.507269, -89.001049, true, "https://www.indiegogo.com/projects/asap-connect-the-future-of-usb-cables", 1],
	["Tristique semper duis.", "Tristique semper duis quis iaculis tristique est suscipit auctor, varius amet tincidunt quisque ut diam elementum, in erat mattis ligula himenaeos id etiam.

", "2", 40.507481, -88.998431, false, "", 1],
	["Tempus sodales.", "Tempus sodales ante nostra condimentum ante viverra, sollicitudin pretium vehicula ornare erat iaculis, imperdiet feugiat proin nullam malesuada.", "2", 40.507024, -89.000705, true, "https://www.kickstarter.com/projects/coolminiornot/massive-darkness?ref=home_popular", 1]
]

convo_list = [
	["Fames", "Viverra cursus massa curabitur condimentum convallis, est condimentum urna luctus feugiat ut, sit nam mollis tortor.

", "1", 40.508346, -88.996264, false, "", 2],
	["Nam viverra hendrerit", "Habitasse taciti non nisi nec tortor enim, porta erat aliquam feugiat sem sociosqu eros, purus mauris himenaeos vitae augue.

", "2", 40.507546, -88.997787, false, "", 2],
	["Inceptos ad proin.", "Inceptos ad proin ornare orci mauris arcu pretium porta ac sit.", "2", 40.506616, -88.999439, false, "", 2],
	["Platea fermentum dapibus.", "Euismod platea fermentum dapibus felis luctus vestibulum inceptos bibendum, lorem orci dictumst nisl orci in ullamcorper, ac porta consequat placerat hac pellentesque vestibulum ut sollicitudin aliquet platea volutpat.

", "2", 40.506225, -88.998452, false, "", 2]
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

User.all.each do |user|
  user.tag_list.add("melee")
  user.tag_list.add("art")
  user.tag_list.add("politics")
  user.tag_list.add("animals")
  user.save
end

Event.all.each do |event|
  event.tag_list.add("melee")
  event.tag_list.add("politics")
  event.save
end

Campaign.all.each do |campaign|
  campaign.tag_list.add("politics")
  campaign.save
end

Conversation.all.each do |conversation|
	conversation.save
end