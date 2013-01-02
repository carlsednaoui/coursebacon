class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :user_id
      t.string :type
      t.integer :curriculum_id

      t.timestamps
    end
  end
end
