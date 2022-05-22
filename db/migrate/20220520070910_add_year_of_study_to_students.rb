class AddYearOfStudyToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :year_of_study, :integer
  end
end
