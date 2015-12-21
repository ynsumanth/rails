class CreateFeilds < ActiveRecord::Migration
  def change
    create_table :feilds do |t|
      t.string :feildName, :null => false
      t.string :departmentId, :null => false
      t.timestamps null: false
    end
  end
end
