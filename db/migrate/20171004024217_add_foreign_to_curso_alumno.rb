class AddForeignToCursoAlumno < ActiveRecord::Migration[5.1]
  def change
  	add_column :alumnos, :curso_id, :integer
  	add_foreign_key :alumnos, :cursos, column: :curso_id, primary_key: :id
  end
end
