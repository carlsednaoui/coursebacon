class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :from_user
      t.string :tweet_text
      t.integer :tweet_id
      t.boolean :tweet_already_exists
      t.boolean :tweet_posted_to_reviews

      t.timestamps
    end
  end
end
