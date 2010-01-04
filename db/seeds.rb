# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create([
  {:username => "jake", :email => "jake@ang.st", :password => "password",  :crypted_password => "password"},
  {:username => "sally", :email => "sally@sally.com", :password => "passw",  :crypted_password => "passw"},
  {:username => "jimmy", :email => "jimmy@jimmy.com", :password => "passw",  :crypted_password => "passw"},
  {:username => "sam", :email => "sam@sam.com", :password => "passw",  :crypted_password => "passw"},
  {:username => "joe", :email => "joe@joe.com", :password => "passw",  :crypted_password => "passw"}
])

Group.create([
  {:name => "Group 1", :description => "Group 1 is the greatest group evar.", :user_id => 1},
  {:name => "Group 2", :description => "Group 2 is the greatest group evar.", :user_id => 1},
  {:name => "Group 3", :description => "Group 3 is the greatest group evar.", :user_id => 1},
  {:name => "Group 4", :description => "Group 4 is the greatest group evar.", :user_id => 1},
  {:name => "Group 5", :description => "Group 5 is the greatest group evar.", :user_id => 1}
])

Membership.create([
  {:user_id => 1, :group_id => 4}
  {:user_id => 1, :group_id => 6}
])