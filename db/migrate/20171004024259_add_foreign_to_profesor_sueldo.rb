class AddForeignToProfesorSueldo < ActiveRecord::Migration[5.1]
  def change
  	add_column :sueldos, :profesor_id, :integer
  	add_foreign_key :sueldos, :profesores, column: :profesor_id, primary_key: :id
  end
end
