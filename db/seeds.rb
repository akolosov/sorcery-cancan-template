# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

admin = User.create  :email => 'admin@test.com', :password => 'admin', :password_confirmation => 'admin'
admin.roles = 'admin'
admin.save

user = User.create  :email => 'user@test.com', :password => 'user', :password_confirmation => 'user'
user.roles = 'user'
user.save

test = User.create  :email => 'test@test.com', :password => 'test', :password_confirmation => 'test'
test.roles = 'user'
test.save
