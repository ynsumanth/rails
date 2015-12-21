class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstName, :null => false
      t.string :middleName
      t.string :lastName, :null => false
      t.string :emailId, :null => false
      t.string :mobileNo
      t.string :permanentAddress
      t.string :mailingAddress, :null => false
      t.string :emergencyContact, :null => false
      t.string :password_digest
      t.string :departmentId
      t.timestamps null: false
    end
  end
end
