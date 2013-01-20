class CreateResourceReviews < ActiveRecord::Migration
  def change
    create_table :resource_reviews do |t|
      t.integer :resource_id
      t.integer :user_id
      t.text :review
      t.boolean :recommended

      t.timestamps
    end
  end
end
