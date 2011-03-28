# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create(:username => "admin", :password => "test123", :password_confirmation => "test123", :admin => true, :email => "admin@lvh.me", :name => "Administrador")

Folder.create([{:name => "Films"}, {:name => "Documentals"}])

Video.create([{:name => "Video 1", :length => 120, :year => 2001, :link => "blah", :folder_id => 1, :user_id => 1}, {:name => "Video 2", :link => "blah", :folder_id => 2, :user_id => 1}])
