# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.delete_all

user1 = User.create(:name => "Gonzalo", :password => "12345", :mail=>"gonzalo@upo.com")
user2 = User.create(:name => "Godofredo", :password => "12345", :mail=>"Godofredo@upo.com")
user3 = User.create(:name => "Altair", :password => "12345", :mail=>"Altair@upo.com")
user4 = User.create(:name => "Nicolas", :password => "12345", :mail=>"Nicolas@upo.com")
user5 = User.create(:name => "Pepito", :password => "12345", :mail=>"Pepito@upo.com")
user6 = User.create(:name => "Sauron", :password => "12345", :mail=>"Sauron@upo.com")
user7 = User.create(:name => "Prueba", :password => "prueba", :mail=>"prueba@upo.com")

Channel.delete_all

chanel1 = Channel.create(:name => "Soporte", :description => "Información para el usuario", :owner=> user6.id)
chanel2 = Channel.create(:name => "Historia", :description => "Chat sobre la historia de europa", :owner => user4.id)

ChannelUser.delete_all

ChannelUser.create(:channel_id => chanel1.id, :user_id => user1.id)
ChannelUser.create(:channel_id => chanel1.id, :user_id => user2.id)
ChannelUser.create(:channel_id => chanel1.id, :user_id => user3.id)
ChannelUser.create(:channel_id => chanel1.id, :user_id => user4.id)
ChannelUser.create(:channel_id => chanel2.id, :user_id => user5.id)
ChannelUser.create(:channel_id => chanel2.id, :user_id => user6.id)

Comment.delete_all

Comment.create(:channel_id => chanel1.id, :user_id => user1.id, :message => "¿Lo tienes encendido?.")
Comment.create(:channel_id => chanel1.id, :user_id => user2.id, :message => "Sí.")
Comment.create(:channel_id => chanel1.id, :user_id => user1.id, :message => "¿Has probado a reiniciar?.")
Comment.create(:channel_id => chanel1.id, :user_id => user2.id, :message => "No.")
Comment.create(:channel_id => chanel1.id, :user_id => user1.id, :message => "Pruebalo y me cuentas.")
Comment.create(:channel_id => chanel2.id, :user_id => user3.id, :message => "Si, la hermandad pronto se reunirá")
Comment.create(:channel_id => chanel2.id, :user_id => user4.id, :message => "Dios lo dispone.")

