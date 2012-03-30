class CreateBookReviews < ActiveRecord::Migration
  def change
    create_table :book_reviews do |t|
      t.integer :book_id
      t.integer :user_id
      t.text :review
      t.boolean :recommended

      t.timestamps
    end
  end
end
