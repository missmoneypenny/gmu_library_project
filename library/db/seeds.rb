# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.delete_all
User.delete_all
Reservation.delete_all

Book.create(isbn:'0441569560', title:'Neuromancer', abstract:"Neuromancer is a novel by William Gibson, a seminal work in the cyberpunk genre. It was Gibson's debut novel and the beginning of the Sprawl trilogy. The novel tells the story of a washed-up computer hacker hired by a mysterious employer to pull off the ultimate hack.",
published_on:'1984-07-01', author:'William Gibson', pages:271, genre:'science-fiction', image_cover_url:'http://1.bp.blogspot.com/-SQcmee3raCM/TiRK0NJSWdI/AAAAAAAAGhg/UjZlm0wk_To/s1600/Neuromancer_Cover_by_Chellz.jpg', total_in_library:2)

Book.create(isbn:'0312932081', title:"Ender's Game", abstract:"Ender's Game is a military science fiction novel by American author Orson Scott Card. Set in Earth's future, the novel presents an imperiled mankind after two conflicts with the Buggers, an insectoid alien species. In preparation for an anticipated third invasion, children, including the novel's protagonist, Ender Wiggin, are trained at a very young age through increasingly difficult games including some in zero gravity, where Ender's tactical genius is revealed.",
published_on:'1985-01-15', author:'Orson Scott Card', pages:384, genre:'science-fiction', image_cover_url:'http://www.marshall.edu/library/bannedbooks/Images/endersgame.jpg', total_in_library:3)

Book.create(isbn:'1741163358', title:'Thriller', abstract:"Thriller is a compilation of 30 thriller short stories edited by James Patterson.",
published_on:'2006-06-06', author:'James Patterson', pages:552, genre:'thriller', image_cover_url:'http://fc07.deviantart.net/fs70/i/2012/299/0/a/thriller_book_cover_by_corvinerium-d5izrwq.jpg', total_in_library:5)

Book.create(isbn:'978-0307588364', title:'Gone Girl', abstract:"Gone Girl is a contemporary thriller novel by American writer Gillian Flynn. Crown Publishing Group published the novel in June 2012 and it soon made the New York Times Best Seller list. The novel's principal suspense comes from an uncertainty about the main character, Nick Dunne, and whether he killed his wife, Amy Dunne.",
published_on:'2012-06-09', author:'Gillian Flynn', pages:432, genre:'thriller', image_cover_url:'http://katyat34.typepad.com/.a/6a00d8341ca51553ef0176169d3fe5970c-800wi', total_in_library:6)

Book.create(isbn:'0385302304', title:'Outlander', abstract:"Outlander is the first in a series of seven historical multi-genre novels by Diana Gabaldon. It focuses on 20th century nurse Claire Randall, who time travels to 18th century Scotland and finds adventure and romance with the dashing James Fraser.",
published_on:'1991-06-01', author:'Diana Gabaldon', pages:640, genre:'romance', image_cover_url:'http://www.paperdroids.com/wp-content/uploads/2013/09/outlander-original-cover-jacket-by-diana-gabaldon.jpg', total_in_library:20)

Book.create(isbn:'978-0-15-602943-8', title:"The Time Traveler's Wife", abstract:"The Time Traveler's Wife is the debut novel of American author Audrey Niffenegger, published in 2003. It is a love story about a man with a genetic disorder that causes him to time travel unpredictably, and about his wife, an artist, who has to cope with his frequent absences and dangerous experiences.",
published_on:'2004-07-05', author:'Audrey Niffenegger', pages:546, genre:'romance', image_cover_url:'http://thirtyandlife.com/wp-content/uploads/2013/12/The-Time-Travelers-Wife-Co.jpg', total_in_library:6)

Book.create(isbn:'9781593081409', title:'The Hunchback of Notre-Dame', abstract:"The Hunchback of Notre-Dame is an exquisite novel written by Victor Hugo during the Romantic era. The title refers to the Notre Dame Cathedral in Paris, on which the story is centered. It is a story of love and tragedy that sincerely demonstrates the genuine power a pen may possess in order to revive a cathedral that embodies such splendor and passion.",
published_on:'1831-01-14', author:'Victor Hugo', pages:544, genre:'classic', image_cover_url:'http://cdn2.all-art.org/world_literature/images/g/54.jpg', total_in_library:16)

Book.create(isbn:'978-0451419439', title:'Les Misérables', abstract:"Les Misérables is a French historical novel by Victor Hugo, first published in 1862, that is considered one of the greatest novels of the 19th century. In the English-speaking world, the novel is usually referred to by its original French title (variations include The Miserable, The Wretched, The Miserable Ones, The Poor Ones, The Wretched Poor and The Victims, and The Dispossessed). Beginning in 1815 and culminating in the 1832 June Rebellion in Paris, the novel follows the lives and interactions of several characters, focusing on the struggles of ex-convict Jean Valjean and his experience of redemption.",
published_on:'1862-07-04', author:'Victor Hugo', pages:1488, genre:'classic', image_cover_url:'http://www.pagepulp.com/wp-content/110.jpg', total_in_library:6)

Book.create(isbn:'0-06-025673-7', title:'A Light in the Attic', abstract:"A Light in the Attic is a collection of poems by the American poet, writer, and children's author Shel Silverstein. The poems for children are accompanied by illustrations also created by Shel Silverstein.",
published_on:'1981-09-01', author:'Shel Silverstein', pages:169, genre:'poetry', image_cover_url:'http://upload.wikimedia.org/wikipedia/en/1/1b/A_Light_in_the_Attic_cover.jpg', total_in_library:10)

Book.create(isbn:'978-0-06-440959-9', title:'Love That Dog', abstract:"Love That Dog is a free verse piece written written in diary format, in the perspective of a young boy who resists poetry assignments from his teacher. The author drew inspiration from Walter Dean Myers' poem, Love That Boy. Love That Dog is composed of multiple short chapters - each chapter is listed as a diary entry. As the novel develops and Jack's confidence grows, so does his literary style. His progresses from short and defiant sentences to more sophisticated poetry.",
published_on:'2001-08-07', author:'Sharon Creech', pages:128, genre:'poetry', image_cover_url:'http://1.bp.blogspot.com/_4Y0ajBoiuVk/TJPZVkChNbI/AAAAAAAABbY/-k9yql-LH9E/s1600/1592075.jpg', total_in_library:21)

Book.create(isbn:'9780590846288', title:'Captain Underpants', abstract:"Captain Underpants is a children's novel series by American author and illustrator Dav Pilkey. The series revolves around two fourth graders, George Beard and Harold Hutchins, and Captain Underpants, an aptly named superhero from one of George & Harold's comic books, that accidentally becomes real when George and Harold hypnotize their megalomaniacal principal, Mr. Krupp.",
published_on:'1997-09-01', author:'Dav Pilkey', pages:128, genre:'Children', image_cover_url:'http://www.thegazoo.com/wp-content/uploads/2013/09/Captain-Underpants1.jpg', total_in_library:1)

Book.create(isbn:'978-0671666064', title:'Strega Nona', abstract:"Strega Nona is an original children's book written and illustrated by Tomie dePaola. It concerns Strega Nona (\"Grandma Witch\") and her helper. The helper causes the title character's magic pasta pot to create so much pasta that it nearly flooded and buried a town.",
published_on:'1979-09-03', author:'Tomie dePaola', pages:32, genre:'Children', image_cover_url:'http://d202m5krfqbpi5.cloudfront.net/books/1348009308l/581409.jpg', total_in_library:2)

User.create(name: 'gus2', user_id: 'gus2', password: 'iluvrails', password_confirmation: 'iluvrails', admin: true)
