class AddCourseRecommendedToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :course_recommended, :boolean
  end
end
