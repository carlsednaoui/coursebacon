class BookReview < ActiveRecord::Base
	belongs_to :user
	belongs_to :book

	validates_presence_of :book_id
	validates_presence_of :user_id
	validates_presence_of :review
end
