class Reservation < ActiveRecord::Base
belongs_to :users
belongs_to :books
	def self.search(book_id,user_id)
	where('book_id = ? AND user_id = ?', "#{book_id}",
	"#{user_id}").exists?
	end
end
