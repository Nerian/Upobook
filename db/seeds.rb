# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.delete_all

User.create(:name => "Gonzalo", :password => "12345", :mail=>"gonzalo@upo.es")
User.create(:name => "Godofredo", :password => "12345", :mail=>"Godofredo@upo.es")
User.create(:name => "Altair", :password => "12345", :mail=>"Altair@upo.es")
User.create(:name => "Nicolas", :password => "12345", :mail=>"Nicolas@upo.es")
User.create(:name => "Pepito", :password => "12345", :mail=>"Pepito@upo.es")
User.create(:name => "Sauron", :password => "12345", :mail=>"Sauron@upo.es")