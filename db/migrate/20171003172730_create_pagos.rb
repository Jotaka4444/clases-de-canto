class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.date :fecha
      t.float :monto

      t.timestamps
    end
  end
end
