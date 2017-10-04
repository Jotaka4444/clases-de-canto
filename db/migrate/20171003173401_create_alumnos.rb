class CreateAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnos do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :telefono
      t.string :correo
      t.date :fecha_nacimiento
      t.string :direccion
      t.string :clasificacion_vocal
      t.string :estado_pago

      t.timestamps
    end
  end
end
