class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :url
      t.string :main_topic
      t.string :offered_by
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
