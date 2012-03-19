class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :url
      t.string :main_topic
      t.string :offered_by
      t.text :description
      t.text :syllabus

      t.timestamps
    end
  end
end
