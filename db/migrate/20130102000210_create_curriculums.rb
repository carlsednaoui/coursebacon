class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :topic
      t.integer :number_of_resources
      t.string :completion_time
      t.integer :level

      t.timestamps
    end
  end
end
