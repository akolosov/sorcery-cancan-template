# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Role.create([ { :name => 'admin' }, { :name => 'user' } ], :without_protection => true)

admin = User.create :username => 'admin', :email => 'admin@test.com', :password => 'admin', :password_confirmation => 'admin'
admin.save
admin.add_role :admin

user = User.create :username => 'test', :email => 'user@test.com', :password => 'user', :password_confirmation => 'user'
user.save
user.add_role :user

test = User.create :username => 'test', :email => 'test@test.com', :password => 'test', :password_confirmation => 'test'
test.save
test.add_role :user
