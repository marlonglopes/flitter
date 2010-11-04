# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require 'faker'
require 'populator'

User.destroy_all

10.times do
	user = User.new
	user.username = Faker::Internet.user_name
	user.email =	Faker::Internet.email
	user.password = "test"
	user.password_confirmation = "test"
	user.save
end

User.all.each do |user|
	Flit.populate(5..10) do |flit|
		flit.user_id=user.id
		flit.message=Faker::Lorem.sentence
	end

end
