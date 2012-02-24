# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

['About', 'Contact', 'Directions (header)', 'Forms', 'Home page', 'How you can help', 'Mobile', 'Pre/Post Op', 'Pricing', 'Services', 'Vaccinations'].each do |blurb|
  Blurb.find_or_create_by_name blurb
end