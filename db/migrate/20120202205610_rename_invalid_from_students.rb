class RenameInvalidFromStudents < ActiveRecord::Migration
  def up
  	rename_column :students, :invalid, :invalido
  end

  def down
  	rename_column :students, :invalido, :invalid
  end
end
