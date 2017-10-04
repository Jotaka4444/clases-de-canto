class CreateSueldos < ActiveRecord::Migration[5.1]
  def change
    create_table :sueldos do |t|
      t.date :fecha
      t.float :monto

      t.timestamps
    end
  end
end
