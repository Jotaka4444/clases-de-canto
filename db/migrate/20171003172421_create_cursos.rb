class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.datetime :horario
      t.integer :sala

      t.timestamps
    end
  end
end
