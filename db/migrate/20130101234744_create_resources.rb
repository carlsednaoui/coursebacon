class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :user_id
      t.string :type

      t.timestamps
    end
  end
end
