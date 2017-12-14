class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :item_gasto
      t.integer :tipo_gasto
      t.date :periodo_gasto
      t.references :tipo_gasto, foreign_key: true
      t.references :recinto, foreign_key: true

      t.timestamps
    end
  end
end
