class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :pojectname
      t.integer :class
      t.string :instructorname

      t.timestamps
    end
  end
end
