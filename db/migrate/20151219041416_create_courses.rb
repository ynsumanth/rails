class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :courseDescription, :null => false
      t.string :feildId, :null => false
      t.timestamps null: false
    end
  end
end
