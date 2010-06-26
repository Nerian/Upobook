# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.delete_all

User.create(:name => "Gonzalo", :password => "12345", :mail=>"gonzalo@upo.com")
User.create(:name => "Godofredo", :password => "12345", :mail=>"Godofredo@upo.com")
User.create(:name => "Altair", :password => "12345", :mail=>"Altair@upo.com")
User.create(:name => "Nicolas", :password => "12345", :mail=>"Nicolas@upo.com")
User.create(:name => "Pepito", :password => "12345", :mail=>"Pepito@upo.com")
User.create(:name => "Sauron", :password => "12345", :mail=>"Sauron@upo.com")