class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	belongs_to :tutorial
	belongs_to :book

	validates_presence_of :course_id
	validates_presence_of :user_id
	validates_presence_of :course_review
	validates_presence_of :course_recommended
end
