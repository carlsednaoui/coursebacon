class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :url
      t.string :main_topic
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
