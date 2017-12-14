class CreatePropiedads < ActiveRecord::Migration[5.1]
  def change
    create_table :propiedads do |t|
      t.string :direccion
      t.string :numero
      t.string :departamento
      t.string :rol
      t.string :mt
      t.float :coeficiente
      t.string :tipo_propiedad
      t.string :torre
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
