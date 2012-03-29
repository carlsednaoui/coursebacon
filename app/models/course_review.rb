class CourseReview < ActiveRecord::Base
	belongs_to :user
	belongs_to :course

	validates_presence_of :course_id
	validates_presence_of :user_id
	validates_presence_of :review
end
