class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :offered_by
      t.text :description
      t.string :url
      t.text :syllabus
      t.string :main_topic

      t.timestamps
    end
  end
end
