#################
###USERS########
#---------------------------#
User.destroy_all
user_list = [
    {
        :name => "Robbie",
        :username => "Robbie1",
        :password => "hockey",
        :age => 26,
        :male => true
    },
    {
        :name => "Kabir",
        :username => "Kabir1",
        :password => "soccer",
        :age => 27,
        :male => true
    },
    {
        :name => "Reina",
        :username => "Reina1",
        :password => "football",
        :age => 28,
        :male => false
    },
]

user_list.each do |user_info|
    u = User.new
    u.name = user_info[:name]
    u.username = user_info[:username]
    u.password = user_info[:password]
    u.age = user_info[:age]
    u.male = user_info[:male]
    u.save

end

#######################
###COMMUNITIES########
#---------------------------------------#
Community.destroy_all
community_list = [
    {
        :name => "Big Dogs",
        :variety => "School Sec"
    },
    {
        :name => "Turkeys",
        :variety => "School Sec"
    },
    {
        :name => "Evanston",
        :variety => "Local"
    }
]
community_list.each do |community_info|
    c = Community.new
    c.name = community_info[:name]
    c.variety = community_info[:variety]
    c.save
end

#####################
###ACTIVITIES########
#-----------------------------------#
Activity.destroy_all
activity_list = [
    {
        :variety => "Running",
        :user_id => User.find_by(name: "Robbie").id,
        :date => Time.new,
        :distance => 10,
        :time => 70,
        :description => "Long, slow run",
        :photo_url => "http://bridgerun.com/uploads/2013/12/running.jpg"
    },
    {
        :variety => "Cycling",
        :user_id => User.find_by(name: "Robbie").id,
        :date => Time.new + 360,
        :distance => 40,
        :time => 130,
        :description => "Ride along Lake Michigan",
        :photo_url => "http://mymedfordnj.com/wp-content/uploads/2013/03/cycling.jpg"
    },
    {
         :variety => "Swimming",
        :user_id => User.find_by(name: "Kabir").id,
        :date => Time.new + 720,
        :distance => 1,
        :time => 30,
        :description => "Swam at LA Fitness",
        :photo_url => "http://upload.wikimedia.org/wikipedia/commons/c/cd/231000_-_Swimming_Daniel_Bell_reflections_action_-_3b_-_2000_Sydney_event_photo.jpg"
    }
]

activity_list.each do |activity_info|
    a = Activity.new
    a.variety = activity_info[:variety]
    a.user_id = activity_info[:user_id]
    a.date = activity_info[:date]
    a.distance = activity_info[:distance]
    a.time = activity_info[:time]
    a.description = activity_info[:description]
    a.photo_url = activity_info[:photo_url]
    a.save
end

#####################
###COMMENTS########
#-----------------------------------#
Comment.destroy_all
comment_list = [
    {
        :user_id => User.find_by(name: "Robbie").id,
        :comment => "fun",
        :date => Time.new + 20,
        :activity_id => Activity.all[0].id
    },
    {
        :user_id => User.find_by(name: "Kabir").id,
        :comment => "great work",
        :date => Time.new + 30,
        :activity_id => Activity.all[1].id
    },
    {
        :user_id => User.find_by(name: "Robbie").id,
        :comment => "nice view",
        :date => Time.new + 40,
        :activity_id => Activity.all[2].id
    },
    {
        :user_id => User.find_by(name: "Robbie").id,
        :comment => "slow",
        :date => Time.new + 50,
        :activity_id => Activity.all[2].id
    }
]

comment_list.each do |comment_info|
    c = Comment.new
    c.user_id = comment_info[:user_id]
    c.comment = comment_info[:comment]
    c.date = comment_info[:date]
    c.activity_id = comment_info[:activity_id]
    c.save
end

########################
###MEMBERSHIPS########
#----------------------------------------#
Membership.destroy_all
membership_list = [
    {
        :user_id => User.find_by(name: "Robbie").id,
        :community_id => Community.all[0].id,
        :join_date => Time.new
    },
    {
        :user_id => User.find_by(name: "Kabir").id,
        :community_id => Community.all[1].id,
        :join_date => Time.new + 180
    },
    {
        :user_id => User.find_by(name: "Robbie").id,
        :community_id => Community.all[2].id,
        :join_date => Time.new + 540
    }
]

membership_list.each do |membership_info|
    m = Membership.new
    m.user_id = membership_info[:user_id]
    m.community_id = membership_info[:community_id]
    m.join_date =  membership_info[:join_date]
    m.save
end

puts "There are now #{User.count} users in the system."
puts "There are now #{Community.count} communities in the system."
puts "There are now #{Activity.count} activities in the system."
puts "There are now #{Comment.count} comments in the system."
puts "There are now #{Membership.count} memberships in the system."
