class CreateTipoPropiedads < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_propiedads do |t|
      t.string :name

      t.timestamps
    end
  end
end
