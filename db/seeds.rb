# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Link.create(:subreddit_id => 1,:title => 'First Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://google.com')
Link.create(:subreddit_id => 1,:title => 'Second Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://kotaku.com')
Link.create(:subreddit_id => 1,:title => 'Third Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://eventhubs.com')
Link.create(:subreddit_id => 1, :title => 'Fourth Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://google.com')
Link.create(:subreddit_id => 1,:title => 'Fifth Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://ign.com')
Link.create(:subreddit_id => 1,:title => 'Sixth Post', :summary => 'Jabbas through with you. He has no time for smugglers who drop their shipments at the first sign of an Imperial cruiser. Even I get boarded sometimes. Do you think I had a choice? You can tell that to Jabba. He may only take your ship. Over my dead body. Thats the idea. Ive been looking forward to killing you for a long time. Yes, Ill bet you have. Sorry about the mess.', :url => 'http://imdb.com')

user = User.create! :name => 'Makamaru', :email => 'tadsherlock@gmail.com', :password => '12345678', :password_confirmation => '12345678'
subreddit = Subreddit.create!(:name => "askreddit")
