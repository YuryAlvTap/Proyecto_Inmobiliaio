class AddTipoPropiedadToRecintos < ActiveRecord::Migration[5.1]
  def change
    add_reference :recintos, :tipo_propiedad, foreign_key: true
  end
end
