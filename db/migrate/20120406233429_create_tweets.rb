class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :from_user
      t.string :tweet_text
      t.string :tweet_id
      t.integer :course_id
      t.integer :book_id
      t.integer :tutorial_id
      t.boolean :tweet_already_exists
      t.boolean :tweet_posted_to_reviews

      t.timestamps
    end
  end
end
