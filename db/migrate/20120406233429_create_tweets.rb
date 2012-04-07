class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :author
      t.string :tweet
      t.boolean :tweet_already_exists
      t.boolean :tweet_posted_to_reviews

      t.timestamps
    end
  end
end
