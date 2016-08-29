# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

realCamps = [
  ["The Color of Me - Short Film about Multiple Races","If you really care about diversity in the film industry, then you will want to support this film.",1,41.87423,-87.624791,false,"https://www.indiegogo.com/projects/the-color-of-me-short-film-about-multiple-races-diversity#/",1, ["film","diversity","culture","columbia"]],
  ["Creating a Public Newsroom in Chicago","City Bureau is reimagining journalism on the South and West Sides of Chicago, and we’re asking 1,000 people to join us." ,1,41.784136,-87.59059,false,"https://www.kickstarter.com/projects/citybureau/creating-a-public-newsroom-in-chicago",1, ["journalism","civic","startup","public","news"]],
  ["College of Second Chances","He who opens a school closes a prison.",1,41.771076,-87.575548,false,"https://www.gofundme.com/helpwardcollege",1, ["prison","college","education"]],
  ["Tiny Tech Wizards","My students need iPads to research and respond to daily writing.",1,41.864995,-87.654013,false,"https://www.donorschoose.org/project/tiny-tech-wizards/2044192/",1, ["education","kids","school","supplies","literacy","poverty"]],
  ["Almond&Olive Debut Album","We're Almond&Olive, a folk duo from Chicago, and we're releasing our debut album!",1,41.951191,-87.65986,false,"https://www.kickstarter.com/projects/almondandolive/almondandolive-debut-album?ref=nav_search",1, ["music","folk","acoustic","band","animals"],],
  ["Chicago Photographer Aims to Expand Creative Reach","Time to upgrade from smartphone to digital camera to meet requests for professional photography.",1,41.875794,-87.618948,false,"https://www.indiegogo.com/projects/chicago-photographer-aims-to-expand-creative-reach-photography#/",1, ["photography","instagram","art","supplies"]],
  ["Brown Girls' Production","I'm Sam Bailey and I'm the director/producer of a new web series called Brown Girls. A couple of months ago, Fatimah Asghar  approached me with a script she wrote. It was funny, relatable and fiercely intimate. I immediately fell in love with it.",1,41.857883,-87.651893,false,"https://www.gofundme.com/browngirlsseries",1, ["webseries","queer","poc","film","women","indie"]],
  ["Intensive Support for Our Struggling Readers!","My students need engaging, efficient, and effective resources!",1,41.8479,-87.681223,false,"https://www.donorschoose.org/project/intensive-support-for-our-struggling-rea/2004398/",1, ["education","disability","CPS","reading","children"]],
  ["Bring Back the Chicago Ghost Bus","Bring back the Chicago Hauntings Ghost Bus to bring Chicago history to more kids and seniors!",1,41.875069,-87.624785,false,"https://www.indiegogo.com/projects/bring-back-the-chicago-ghost-bus-history#/",1, ["children","seniors","haunted","halloween","history","tours"]],
  ["Dealbreaker","LOUDA is an emersion of every failed attempt to be recognized – to be HEARD.",1,41.902632,-87.716987,false,"https://www.kickstarter.com/projects/dealbreaker/dealbreaker",1, ["music","indie","vocalist","singer","songwriter","performer"]],
  ["Please Help Amy and Sherwin!","Our friends Amy and Sherwin are long time community activists and artists in Logan Square. Their home was broken into and their most important art making tools-- their dslr cameras, mac laptops, and other valuables, were taken.",1,41.928383,-87.706802,false,"https://www.gofundme.com/2j8yzms",1, ["tragedy","robbery","family","activism","organizing","art"]],
  ["Exercising Our Bodies While Growing Our Minds","My students need Gaiam ball chairs, Gaiam Kids' Stay-N-Play ballance balls, a Diggin wobble deck, wobble cushions, and other items to exercise their bodies while they challenge their minds.",1,41.906886,-87.678094,false,"https://www.donorschoose.org/project/exercising-our-bodies-while-growing-our/2130002/",1, ["children","education","counseling","yoga","magnet","school","health"]],
  ["Our Stories Are Us","Your family stories help your children develop a strong sense of identity and resilience. Save them!",1,41.88852,-87.635448,false,"https://www.indiegogo.com/projects/our-stories-are-us-history-family#/",1, ["family","elderly","biography","story","tech"]]

]

realConvos = [
  ["St. Procopius Kermes 2016","I have so much fun at this every year. Check out the St. Procopius Instagram! St. Procopius Kermes Annual Street Festival presents more than 25 musicians, djs, and performers over three days on Allport St. in Pilsen across from historic San Procopius.",1,41.858597,-87.656346,false,"https://www.instagram.com/explore/locations/263617718/",2,["instagram","dj","party","annual","photos"]],

  ["Step Back (Way Back) to See the Changing Near West Side","Want to see how much the Near West Side neighborhood is changing? Check out the progress in real time, from space.",1,41.881064,-87.663045,false,"https://www.dnainfo.com/chicago/20160805/near-west-side/step-back-way-back-see-changing-near-west-side",2,["chicago","interactive","neighborhood","portrait","DNAinfo"]],

  ["Benito Juarez Hit Hard By CPS Layoffs, 10 Positions Cut","A total of 10 staff positions will be eliminated at Benito Juarez Community Academy in Pilsen, CPS officials announced. ",1,41.852792,-87.664487,false,"https://www.dnainfo.com/chicago/20160809/pilsen/benito-juarez-hit-hard-by-cps-layoffs-10-staffers-will-lose-their-jobs",2,["CPS","layoff","benitojuarez","teachers"]],

  ["Pilsen Neighborhood Facebook Page","A frequently used facebook page for the Pilsen neighborhood in Chicago. Neighbors, local businesses, and community organizations all post here on a frequent basis.",1,41.855813,-87.663603,false,"https://www.facebook.com/Pilsen-neighborhood-137078479710344/",2,["facebook","forum","afterschool"]],
  ["J-Def Peace Project. A Pilsen Mural Project","A wonderful Mural Project in Pilsen, Chicago. The J-Def Peace Project is in the early stages of becoming a multi faceted non-for-profit in an effort to continue the legacy of our cherished son, Jeff Abbey Maldonado, Jr. Jeff, Jr. was an aspiring, conscious hip hop artist who went by the name of J-Def, and worked to bring his music and message into the Pilsen neighborhood.",1,41.857854,-87.668667,false,"https://www.facebook.com/The-J-DEF-Peace-Project-171459632918845/",2,["community","forum","mural","project","peace"]],
  ["Alderman Danny Solis Facebook","The Official Facebook page of 25th ward Aldermad, Danny Solis.",1,41.858507,-87.660196,false,"https://www.facebook.com/Alderman-Danny-Solis-115955051822096/",2,["civic","community","neighborhood","pilsen","news","public"]],
  ["Mijente. A Local Bi-Lingual Organizing and News Blog.","A new political home for Latinx & Chicanx organizing. #LANZATE",1,41.851979,-87.685597,false,"https://twitter.com/ConMijente?ref_src=twsrc%5Etfw",2,["diversity","culture","community","pilsen","news","mijente"]],
  ["Chicago Voz, Formerly Pilsen Portal! Pilsen Neighborhood Services","Welcome to Chicago Voz, a new community online magazine that creates healthy digital communities by providing news, resources, a business directory, historical information, and more!",1,41.857774,-87.666221,false,"http://chicagovoz.org/services-in-pilsen-2/",2,["neighborhood","pilsen","news","services","civic","public","chicagovoz"]],
  ["[Rant] Missing Bridgeport","I grew up in Bridgeport. I went to catholic school there, hung out in parks there, and lived off a diet of tacos and pizza there. I didn't grow up on the ""nice side"" of Bridgeport either.",1,41.837983,-87.646254,false,"https://www.reddit.com/r/BridgeportPilsen/comments/44667o/rant_missing_bridgeport/",2,["bridgeport","culture","neighborhood","nostalgia"]],

  ["Trap House Chicago bridges streetwear and restorative justice ","Mashaun Hendricks’s for-profit clothing line is just one aspect of his activist efforts to address the city’s gun violence.",1,41.853236,-87.650506,false,"http://www.chicagoreader.com/chicago/trap-house-streetwear-mashaun-hendricks/Content?oid=23299774",2,["pilsen","culture","artist","trap","graphics","design"]],
  ["Andorka’s Sandwich Shop Serves Up the Small-Town Charm","Tasty from-scratch sandwiches come to Pilsen.",1,41.853236,-87.650506,false,"http://www.chicagomag.com/Chicago-Magazine/September-2016/Andorkas-Sandwich-Shop/",2,["pilsen","dining","food","entertainment","local"]],
  ["Beurrage. Formerly Great.","Does anyone know what happened to Beurrage (1248 W. 18th St)? I've always been curious since they just mysteriously closed up shop and went radio silent on social media.",1,41.853236,-87.650506,false,"https://www.reddit.com/r/BridgeportPilsen/comments/4hj0mn/what_happened_to_beurrage/",2,["pilsen","dining","closed","pastries","storefront"]],
  ["News: ACRE Residency Establishes Chicago Headquarters","ACRE Residency (Artists’ Cooperative Residency & Exhibitions) is planning a move in central Pilsen.",1,41.853236,-87.650506,false,"http://art.newcity.com/2015/06/05/news-acre-residency-establishes-chicago-headquarters/",2,["art","entertainment","ACRE","culture","community","construction","building","visual"]],
  ["Chicago Fire: Who let's them own our streets?","Posted by Jorge Mújica Murias. For the umpteenth time, they were rolling a ""Chicago Fire"" chapter in Pilsen. Of course",1,41.85281,-87.683194,false,"https://chicago.everyblock.com/talk/aug22-chicago-fire-who-lets-them-own-our-streets-7671996/",2,["parking","cars","tow","civic"]],
  ["Cuatro baleados en La Villita desde la tarde del martes","“Solo requiere una cosa para prender todo”, en el barrio, dijo Benny Estrada.",1,41.84579,-87.697883,false,"http://www.vivelohoy.com/chicago/8698055/cuatro-baleados-en-la-villita-desde-la-tarde-del-martes",2,["shooting","victim","community","safety","gun"]],
  ["So Many Bricks Being Taken From Oprah's Old Studio, It's Now On Lockdown","WEST LOOP — Call them the brick raidersAs demolition continues at the former Harpo Studios site at Washington and Carpenter — ",1,41.84579,-87.697883,false,"https://www.dnainfo.com/chicago/20160824/west-loop/so-many-bricks-being-stolen-from-oprahs-old-studio-its-now-on-lockdown",2,["construction","oprah","celebrity","civic","demolition","gifts","children"]],
  ["Villapalooza: Little Village Music Fest","A free, all-day, all-ages music festival dedicated to promoting non-violent spaces for arts and community engagement.",1,41.844307,-87.714801,false,"http://www.arteyvidachicago.com/events/villapalooza/",2,["festival","concert","music","little","village","family","children"]],
  ["Thinking of moving and need honest opinion","Hi :) I'm a single woman looking for a quiet place to live. I am thinking of moving to the area (Little Italy, Greektown, University Village etc)",1,41.8616,-87.644978,false,"https://chicago.everyblock.com/talk/apr19-thinking-moving-and-need-honest-opinion-7463161/",2,["moving","community","university","question"]],
  ["Affordable Housing Workshop (English/Spanish)","Erie house invites you to learn more about housing designed just for you.",1,41.845763,-87.730525,false,"https://chicago.everyblock.com/neighbor-events/sep14-affordable-housing-workshop-english-spanish-7642911/",2,["housing","affordable","workshop","civic","community","activism","seniors","activist"]],
  ["For Sure, Vote NO for These Judges and Candidates","A Cook County judge was removed from the bench Wednesday amid allegations she let an attorney don her judicial robe and hear cases.",1,41.857621,-87.669504,false,"https://chicago.everyblock.com/announcements/aug18-for-sure-vote-no-these-judges-and-candidates-7663611/",2,["civic","activism","vote","judges","community","cityofchicago","protest","activist"]],
  ["Marshall Square Resource 3rd Annual Peace March and Resource Fair","Please join the community, including residents, agencies, hospitals, schools, etc., in an effort to create Peace in Little Village",1,41.847855,-87.695274,false,"https://chicago.everyblock.com/neighbor-events/oct21-marshall-square-resource-3rd-annual-peace-march-and-7675423/",2,["civic","activism","peace","action","protest","activist"]],
  ["Activist Jared Steverson In Police Custody, Fellow Activists Say","Jared Steverson, a prominent activist in Chicago's anti-police brutality movement, is in police custody on the South Side",1,41.830615,-87.62381,false,"https://www.dnainfo.com/chicago/20160826/washington-park/activist-jared-steverson-police-custody-fellow-activists-say",2,["BLM","blacklivesmatter","protest","activist","police"]],
  ["5 Things to Do This Labor Day Weekend in Chicago","From music festivals to cultural celebrations, here are five things to do in Chicago over the Labor Day weekend, Sept. 3-5.",1,41.893387,-87.610731,false,"https://www.dnainfo.com/chicago/20160826/washington-park/labor-day-weekend-events-chicago-illinois",2,["music","concert","festival","jazz","family","laborday","holiday","weekend"]],
  ["New Start Up Builds Tomorrow's Black Leaders By Backing Their Businesses","A new organization plans to build black businesses across the city by starting at the source — by backing the ideas of Chicago's black youth. ",1,41.858408,-87.660331,false,"https://www.dnainfo.com/chicago/20160826/pilsen/black-teen-entrepreneurs-get-business-tips-new-effort-gray-matter",2,["BLM","startup","community","business","entrepreneur","pilsen"]],
  ["Rent Hike Forces Cultura In Pilsen Out Of Art Center's Longtime Home","Cultura in Pilsen, a non-profit arts organizations that operated at 1900 S. Carpenter for  years, recently made the decision to pack their bags when the landlord doubled their rent.",1,41.858408,-87.660331,false,"https://www.dnainfo.com/chicago/20160826/pilsen/rent-hike-forces-cultura-pilsen-out-of-art-centers-longtime-home",2,["pilsen","culture","rent","gentrification","community"]],
  ["Nine TV Shows Are Filming In Chicago Right Now: Here's Where to Find Them","There are at least nine different TV shows filming within the city limits this week.",1,41.877987,-87.624121,false,"https://www.dnainfo.com/chicago/20160825/downtown/nine-tv-shows-are-filming-chicago-right-now-heres-where-find-them",2,["film","tv","television","movies","shows","chicago"]],
  ["Buying Near The 'L'? Map Shows Real Estate Prices Around Each CTA Stop","Map Shows Real Estate Prices Around Each CTA Stop",1,41.858408,-87.660331,false,"https://www.dnainfo.com/chicago/20160613/downtown/buying-near-l-map-shows-real-estate-prices-around-each-cta-stop",2,["CTA","housing","affordable","pilsen","transit","neighborhood"]]
]

user_list = [
  [ "boblobloaw@law.com", "brochacho", "brochacho", "Kyle" ],
  [ "Allove1950@gustr.com", "brodudeman", "brodudeman", "Fox McCloud"],
  [ "mangbro@jourrapide.com", "bibbidybo", "bibbidybo", "Tom" ],
  [ "Netherlands@gmail.com", "howdoyoudo", "howdoyoudo", "Falco"]
]


realEvents = [
  ["Somos Logan Square Barbeque","Join Somos Logan Square and friends for an end-of-summer barbeque at the Little Cubs Field in Humboldt Park! 
  This free event is open to everyone--whether you're brand new to Somos or a veteran, we would love to see you there. 
  Barbeque basics will be provided, but guests are encouraged to bring extra snacks, drinks, or desserts to share.

  Little Cubs Field is located at 1339 Luis Munoz Marin Dr., just east of Kedzie and Hirsch.

  Please RSVP on Eventbrite: https://www.eventbrite.com/e/somos-logan-square-barbeque-tickets-27248584249
  ***
  Únete a Somos Logan Square y amigxs para una barbacoa en que celebraremos el fin de verano en el Parque Humoldt, en la área cercana al Little Cubs Field.
  Este evento gratuito está abierto a todo el mundo - si usted es nuevo a Somos o un veterano, nos encantaría contar con tu presencia.
  Se proporcionarán elementos básicos de la barbacoa, pero pedimos que todxs lxs invitadxs traigan vegetales, bebidas no alcoholicas o postres para compartir.
  RSVP:https://www.eventbrite.com/e/somos-logan-square-barbeque-tickets-27248584249
  ","2016-09-10T02:32:44-05:00",1,41.906638,-87.701431,false,"https://www.facebook.com/events/1068938073142587/",0,["bbq","logan-square"]],


  ["Pilsen Economic Development and Housing","The Pilsen Planning Committee is hosting another meeting regarding Pilsen's Economic Development and housing. 

  These have been a series of meetings. Which we deem important for the community. And because of that we took it upon ourselves to create an event page for the meeting so that it is visible and can be easily available for the residents of our community. We want you to know this meeting is happening and that your presence and participation is VALUABLE. 

  Please share this event with everyone you know in the community. We need to have a say in what these ""proposals"" are about. If they say these ""proposals"" are for Pilsen then let us be at the table and have our say. 

  Thank you!
  ","1472504400",1,41.857545,-87.668425,false,"https://www.eventbrite.com/e/pilsen-economic-development-housing-planning-meeting-tickets-27193630882",0,["Housing","Organizing","Community Plan"]],


  ["Cuts Kill: March for Community Investment","In Chicago we have seen our public schools closed, mental health clinics shuttered and affordable housing torn down. Historic and continued disinvestment from our neighborhoods, especially in Black and Brown communities, has resulted in more and more violence. 

  Governor Rauner and Rahm Emanuel have made things worse. Lifesaving programs such as Ceasefire, Teen Reach, summer jobs, and many others have been drastically cut or eliminated entirely. Rahm's School Board is cutting another $184 million from Chicago's Public Schools this year, for a total of $300 million cut since 2015. One of the consequences of these cuts: in the last 12 months CPD has reported over 25,870 violent crimes and just this last weekend, a Chicago resident was shot every 33 minutes according to the Chicago Tribune. 

  Many of the people killed over this violent summer have been young people who will not be joining their classmates when school starts. We can not allow this to continue!

  Join us in demanding a real budget that invests in our communities. On Tuesday, August 30th, parents, teachers, students, and community members from across the city are coming together to demand: Rauner meet with young people and parents to discuss funding for: Teen Reach, Ceasefire, and Summer Jobs; Rauner and JPMorgan Chase negotiate to halt the scheduled $870 million payment to Wall Street banks in November and instead invest that money in life saving programs; and Mayor Emanuel pass the TIF Surplus Ordinance to put money back into our public neighborhood schools.
  ","1472589000",1,41.855975,-87.703236,false,"https://www.facebook.com/events/192550284497188/",0,["Advocacy","Organizing","Policy"]],

  ["10th Ward Labor Day Parade and Festival","Alderwoman Susan Sadlowski Garza and Friends of Labor invite you to participate in the 10th Ward Labor Day Parade and Festival. This year's parade will take place on Saturday September 3, 2016 at 12:30 pm, accompanied by a FREE 3 day festival (September 2nd- September 4th) at Steel Worker's Park, on 87th Street.

  The 10th Ward Labor Day parade and festival is expected to bring residents, businesses, organizations, schools, unions and the greater community together to celebrate the accomplishments of hard working men and women. The Southeast Side historic Labor Day Parade and Festival was founded upon union pride and solidarity. We hope that with your support we can make this year’s parade and fest a successful and fun event for the entire 10th Ward community.

  Labor Day Parade Entry Forms can be submitted to the 10th Ward Office at 10500 S. Ewing Avenue, emailed to Nicole.Garcia@cityofchicago.org or faxed to 773-768-8176. Visit our website, to learn how your organization can become a sponsor, participant, or volunteer of the 10th Ward Labor Day Parade 2016!
  ","1472923800",1,41.706379,-87.53528,false,"https://www.facebook.com/events/602720399895503/",0,["Civic Engagement","Labor"]],

  ["Young Professionals for Sen. Andy Manar!","Join us to support Senator Andy Manar on September 8th!

  For more information or to join the host committee, contact Katelynd Duncan: kate@kjdstrategies.com or 312.600.9496
  ","1473373800",1,41.8782,-87.643487,false,"https://www.facebook.com/events/1254705364569630/",0,["Advocacy","Professional","Networking"]],

  ["Auxiliary Board Mixer","The National Museum of Mexican Art’s Auxiliary Board invites you to join them for a fun evening of networking and learning about opportunities available for joining the Auxiliary Board.

  Share your love for NMMA over custom cocktails, craft beer, and delicious bites. To show our appreciation, we will be raffling off two sets of Chicago White Sox tickets to all attendees.

  Admission is FREE!
  ","1473373800",1,41.857711,-87.65732,false,"https://www.facebook.com/events/497213990482375/",0,["Non-profit","Board","Advocacy"]],


  ["Clean and Green: W Fullerton Ave.","Join HNA, 31st Ward Alderman Milly Santiago and Commisioner Arroyo Jr. with cleaning up Fullerton Ave.
  ","1473501600",1,41.924655,-87.731831,false,"https://www.facebook.com/events/1802122063382318/",0,["Green","Hermosa","Enviroment"]],
  ["Adler After Dark: Boldly Go","Fifty years ago, Captain James T. Kirk and his intrepid crew of the USS Enterprise set out on a 5-year mission, to boldly going where no man—no one—had ever gone before.

  Celebrate fifty years of Tribbles, Klingons, Phasers, and Warp Drive, only at Adler After Dark: Boldly Go this fall! Enjoy a Romulan Ale from Ten Forward over the musical stylings of Five Year Mission, or check out the science behind Star Trek with hands-on programs exploring tractor beams, cloaking devices, replicators and more. Whether you’re a Picard or Kirk fan, challenge your fellow Trekkers in a no-holds-barred Team Trivia game, visit the bridge of the Enterprise in our Space Visualization Lab, or check out talks on the cultural impact of Trek and how the shows and movies impacted the lives and work of real scientists. Explore brave new worlds and geek out over one of the seminal sci-fi franchises of our time only at Adler After Dark! 

  Calling all Starfleet personnel, Klingons and Borg! Don’t miss the Boldly Go Costume Contest. Entries will be judged on overall quality, screen accuracy, and most creative. Not feeling the competitive spirit? No worries—any and all Trek costumes encouraged!

  Engage!","1473962400",1,41.866382,-87.606676,false,"http://www.adlerplanetarium.org/events/adler-dark-boldly-go",0,["Adler","Planitarium","Stars","Night Sky"]],

  ["Hermosa Neighborhood Association: General Meeting","1474111800",1,"41.924223","-87.728138",false,"https://www.facebook.com/events/524283854423373/",0,["Neighborhood","Hermosa"]],
]

user_list.each do |email, password, password_confirmation, name|
  User.create( email: email, password: password, password_confirmation: password_confirmation , name: name)
end

realCamps.each do |title, description, user_id, latitude, longitude , in_house, link, action_type, tag_list|
  Campaign.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type, tag_list: tag_list )
end


realEvents.each do |title, description, start_date, user_id, latitude, longitude , in_house, link, action_type, tag_list|
  Event.create( title: title, description: description, start_date: DateTime.now(), user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type, tag_list: tag_list )
end

realConvos.each do |title, description, user_id, latitude, longitude , in_house, link, action_type, tag_list|
  Conversation.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type, tag_list: tag_list )
end













# titles = ["Comment 1 title", "Comment 2 title", "Comment 3 title", "Comment 4 title", "Comment 5 title"]

# userIds = [1,2,3,4,1]

# comments = ["Same teacher said that the advent of cell phone technology would never work because one need only stand on the front lawn of another customer to charge a call to that person's account. Doubting this also lead to a removal from class that day.", "Oh sir, I assure you, for me getting on is most certainly the problem. And maintaining the handstand... and getting out", "Thats what i think", "Getting on isn't the problem.
# Getting out is", "Try moving around to narrow it down."]

# events_list = [
# 	["Maecenas", "Lorem ipsum quis semper rutrum viverra ipsum.
# ", "2007-11-19T02:32:44-06:00","1", 40.503786, -88.995268, true, "", 0],
# 	["Luctus donec curabitur.", "Semper curabitur luctus donec purus auctor odio suspendisse, elit bibendum dolor lacus hac suspendisse nisi, felis senectus eleifend vitae at vel erat interdum suscipit aliquet.", "2007-12-19T08:47:48-06:00","2", 40.504349, -89.001285, false, "http://www.eventbrite.com/e/bloomington-high-school-class-of-06-reunion-tickets-22336664565?aff=ehomecard", 0],
# 	["Scelerisque integer.", "Gravida vel iaculis scelerisque integer metus phasellus urna adipiscing nostra vivamus nulla, aenean ultrices nostra cubilia feugiat senectus himenaeos molestie lacinia vestibulum.

# ", "2007-11-12T09:37:48-06:00","2", 40.507057, -88.995706, true, "", 0],
# 	["Mi phasellus nostra.", "Taciti dictumst nec massa dui vestibulum facilisis odio pellentesque rutrum enim lacus mattis nulla ullamcorper, mi phasellus nostra velit aptent lorem adipiscing imperdiet eu suscipit volutpat mollis hac.", "2007-11-20T08:27:48-06:00","2", 40.508639, -88.985127, false, "http://meetup.com/BN-Bootstrappers/", 0]
# ]

# campaign_list = [
# 	["Fringilla maecenas", "Fringilla maecenas varius suscipit maecenas habitasse iaculis maecenas purus malesuada, nostra luctus feugiat accumsan fermentum sapien risus tellus, vitae etiam cras ad mollis mi porta fames.", "1", 40.508770, -88.998281, true, "", 1],
# 	["Rutrum tincidunt magna luctus.", "Rutrum tincidunt magna luctus arcu amet massa sed, suscipit vulputate morbi senectus conubia class volutpat, tellus lacinia euismod curae laoreet eros senectus ultrices tellus a aenean sodales consequat.

# ", "2", 40.507269, -89.001049, false, "https://www.indiegogo.com/projects/asap-connect-the-future-of-usb-cables", 1],
# 	["Tristique semper duis.", "Tristique semper duis quis iaculis tristique est suscipit auctor, varius amet tincidunt quisque ut diam elementum, in erat mattis ligula himenaeos id etiam.

# ", "2", 40.507481, -88.998431, true, "", 1],
# 	["Tempus sodales.", "Tempus sodales ante nostra condimentum ante viverra, sollicitudin pretium vehicula ornare erat iaculis, imperdiet feugiat proin nullam malesuada.", "2", 40.507024, -89.000705, false, "http://kickstarter.com/projects/coolminiornot/massive-darkness?ref=home_popular", 1]
# ]

# convo_list = [
# 	["Fames", "Viverra cursus massa curabitur condimentum convallis, est condimentum urna luctus feugiat ut, sit nam mollis tortor.

# ", "1", 40.508346, -88.996264, true, "", 2],
# 	["Nam viverra hendrerit", "Habitasse taciti non nisi nec tortor enim, porta erat aliquam feugiat sem sociosqu eros, purus mauris himenaeos vitae augue.

# ", "2", 40.507546, -88.997787, true, "", 2],
# 	["Inceptos ad proin.", "Inceptos ad proin ornare orci mauris arcu pretium porta ac sit.", "2", 40.506616, -88.999439, true, "", 2],
# 	["Platea fermentum dapibus.", "Euismod platea fermentum dapibus felis luctus vestibulum inceptos bibendum, lorem orci dictumst nisl orci in ullamcorper, ac porta consequat placerat hac pellentesque vestibulum ut sollicitudin aliquet platea volutpat.

# ", "2", 40.506225, -88.998452, true, "", 2]
# ]



# convo_list.each do |title, description, user_id, latitude, longitude , in_house, link, action_type|
#   Conversation.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
# end


# campaign_list.each do |title, description, user_id, latitude, longitude , in_house, link, action_type|
#   Campaign.create( title: title, description: description, user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
# end


# events_list.each do |title, description, start_date, user_id, latitude, longitude , in_house, link, action_type|
#   Event.create( title: title, description: description, start_date: DateTime.now(), user_id: user_id, latitude: latitude, longitude: longitude, in_house: in_house, link: link, action_type: action_type )
# end




# User.all.each do |user|
#   user.tag_list.add("melee")
#   user.tag_list.add("art")
#   user.tag_list.add("politics")
#   user.tag_list.add("animals")
#   user.save
# end

# Event.all.each do |event|
#   event.tag_list.add("melee")
#   event.tag_list.add("politics")
#   event.save
#   event.create_attendanceList()
#   event.save
#   event.attendanceList.attendies.push 1
#   event.attendanceList.attendies.push 2
#   event.attendanceList.attendies.push 3
#   event.attendanceList.save

#   for i in 0..3
#     @comment = event.comments.create
#     @comment.title = titles[i]
#     @comment.user_id = userIds[i]
#     @comment.comment = comments[i]
#     @comment.save
#   end
#   event.save
# end

# Campaign.all.each do |campaign|
#   campaign.tag_list.add("politics")
#   campaign.save
# end

# Conversation.all.each do |conversation|
#   for i in 0..3
#     @comment = conversation.comments.create
#     @comment.title = titles[i]
#     @comment.user_id = userIds[i]
#     @comment.comment = comments[i]
#     @comment.save
#   end
# 	conversation.save
# end

# puts User.all

#         user_params = { 
#           name: "test",
#           email: "email@email.com",
#           password: "testest",
#           password_confirmation: "testest",
#           bio: "Whats good in the hood.",
#           tag_list: ["melee", "art", "politics"]
#       }

# user = User.new(user_params)

# if user.save
#   puts "oh shit whaddup"
#   puts ActsAsTaggableOn::Tag.count
# end