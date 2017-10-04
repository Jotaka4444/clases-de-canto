class CreateProfesors < ActiveRecord::Migration[5.1]
  def change
    create_table :profesores do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :telefono
      t.string :correo
      t.date :fecha_nacimiento
      t.string :direccion

      t.timestamps
    end
  end
end
