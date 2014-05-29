class Book < ActiveRecord::Base
  GENRE = ['science-fiction', 'thriller', 'romance', 'classic','poetry', 'Children']
  validates :isbn, :title, :abstract, :pages, :genre, :published_on, presence: true
  validates :abstract, length: { minimum: 15 }
  validates :pages, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :genre, inclusion: { in: GENRE }
 has_many :reservations
 	def self.search(search)
 		where('title LIKE ? OR isbn LIKE ? OR author LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	end
  
end

