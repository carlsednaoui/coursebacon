class CreateTutorialReviews < ActiveRecord::Migration
  def change
    create_table :tutorial_reviews do |t|
      t.integer :tutorial_id
      t.integer :user_id
      t.text :review
      t.boolean :recommended

      t.timestamps
    end
  end
end
