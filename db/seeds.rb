# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
first_deck = Deck.new(title: "first Deck")
first_deck.save

card = first_deck.cards.build(frontContent: "First Card")
card.save


# Record creation for categories
Category.create name: 'History'
Category.create name: 'Language'
Category.create name: 'Literature'
Category.create name: 'Math'
Category.create name: 'Science'
Category.create name: 'Music'
Category.create name: 'Movies'
Category.create name: 'Sports'