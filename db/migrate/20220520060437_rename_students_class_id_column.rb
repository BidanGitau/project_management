class RenameStudentsClassIdColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class_id, :year_of_study
     end
end
