class CreateTipoGastos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_gastos do |t|
      t.string :descripcion_gasto

      t.timestamps
    end
  end
end
