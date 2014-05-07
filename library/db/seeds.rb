# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(isbn:'978-0451531513', title:'The Hunchback of Notre Dame', abstract:'Who is the monster and who is the man?', pages:528, genre:'classic', published_on:'1831-01-14', total_in_library:2)
Book.create(isbn:'978-0439082822', title:'Captain Underpants', abstract:'A hero for the common man, by the common man', pages:121, genre:'children', published_on:'1997-01-09', total_in_library:3)
<<<<<<< HEAD
User.create(name: 'John Smith', user_id: 'jsmith', password_digest: 'password1')
=======
User.create(name:'RacSar',user_id:'12345',password_digest:'iluvrails',admin:'false') 
>>>>>>> 14ca255bf2db8ec5483aaede02274d1c8dcc583c
