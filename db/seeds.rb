# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Item.create([{name: "Orange", 
	price: 0.50, 
	description: "Juicy", 
	image_url: "http://realfood.tesco.com/media/images/Orange-and-almond-srping-cake-hero-58d07750-0952-47eb-bc41-a1ef9b81c01a-0-472x310.jpg"},
	{name: "Avocado",
		price: 2.00,
		description: "Creamy",
		image_url: "http://img2.timeinc.net/health/images/slides/avocado-heart-400x400.jpg"}])


