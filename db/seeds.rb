# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.delete_all
Channel.delete_all

user1 = User.create(:name => "Gonzalo", :password => "12345", :mail=>"gonzalo@upo.com")
user2 = User.create(:name => "Godofredo", :password => "12345", :mail=>"Godofredo@upo.com")
user3 = User.create(:name => "Altair", :password => "12345", :mail=>"Altair@upo.com")
user4 = User.create(:name => "Nicolas", :password => "12345", :mail=>"Nicolas@upo.com")
user5 = User.create(:name => "Pepito", :password => "12345", :mail=>"Pepito@upo.com")
user6 = User.create(:name => "Sauron", :password => "12345", :mail=>"Sauron@upo.com")

Channel.create(:name => "Soporte", :description => "Información para el usuario", :owner=> user6.id)
Channel.create(:name => "Historia", :description => "Chat sobre la historia de europa", :owner => user4.id)

