class TutorialReview < ActiveRecord::Base
	belongs_to :user
	belongs_to :tutorial

	validates_presence_of :tutorial_id
	validates_presence_of :user_id
	validates_presence_of :review
end
