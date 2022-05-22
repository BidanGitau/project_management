class RenameStudentsClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class, :class_id
  end
end
