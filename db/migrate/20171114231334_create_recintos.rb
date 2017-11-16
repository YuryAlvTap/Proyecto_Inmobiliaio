class CreateRecintos < ActiveRecord::Migration[5.1]
  def change
    create_table :recintos do |t|
      t.string :tipo_recinto
      t.string :direccion_recinto
      t.string :numero_recinto
      t.string :comuna_recinto
      t.string :ciudad_recinto
      t.string :region_recinto
      t.string :pais_recinto
      t.string :ubicacion_recinto

      t.timestamps
    end
  end
end
