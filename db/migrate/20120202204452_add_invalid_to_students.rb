class AddInvalidToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :invalid, :boolean
  end
end
