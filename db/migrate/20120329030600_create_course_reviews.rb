class CreateCourseReviews < ActiveRecord::Migration
  def change
    create_table :course_reviews do |t|
      t.integer :course_id
      t.integer :user_id
      t.text :review
      t.boolean :recommended

      t.timestamps
    end
  end
end
