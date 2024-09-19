class AddUniqueIndexToStudents < ActiveRecord::Migration[7.1]
  def change
    add_index :students, [:name, :subject_name], unique: true
  end
end
