class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :course_id
      t.integer :user_id
      t.text :course_review

      t.timestamps
    end
  end
end
