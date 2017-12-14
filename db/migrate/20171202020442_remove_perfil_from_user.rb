class RemovePerfilFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :perfil, :string
  end
end
