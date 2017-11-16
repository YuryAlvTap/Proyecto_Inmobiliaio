class AddRecintoToPropiedads < ActiveRecord::Migration[5.1]
  def change
    add_reference :propiedads, :recinto, foreign_key: true
  end
end
