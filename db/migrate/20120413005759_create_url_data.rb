class CreateUrlData < ActiveRecord::Migration
  def change
    create_table :url_data do |t|
      t.integer :course_id
      t.integer :book_id
      t.integer :tutorial_id
      t.integer :mozrank
      t.integer :moz_backlinks
      t.integer :google_backlinks

      t.timestamps
    end
  end
end
