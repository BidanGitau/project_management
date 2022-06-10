class AddStudentIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :student_id, :int
  end
end
