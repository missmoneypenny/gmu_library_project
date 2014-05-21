# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(isbn:'978-0451531513', title:'The Hunchback of Notre Dame', abstract:'Who is the monster and who is the man?', pages:528, genre:'classic', published_on:'1831-01-14', total_in_library:2)
Book.create(isbn:'978-0439082822', title:'Captain Underpants', abstract:'A hero for the common man, by the common man', pages:121, genre:'children', published_on:'1997-01-09', total_in_library:3)

