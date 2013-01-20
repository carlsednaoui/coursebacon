class ResourceReview < ActiveRecord::Base
  attr_accessible :recommended, :resource_id, :review, :user_id

  belongs_to :user
  belongs_to :resource

  validates_presence_of :resource_id
  validates_presence_of :user_id
  validates_presence_of :review
end
