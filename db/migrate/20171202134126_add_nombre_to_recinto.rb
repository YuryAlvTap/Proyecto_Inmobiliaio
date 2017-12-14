class AddNombreToRecinto < ActiveRecord::Migration[5.1]
  def change
    add_column :recintos, :nombre, :string
  end
end
