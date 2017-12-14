ActiveAdmin.register Propiedad do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# t.string "direccion"
# t.string "numero"
# t.string "departamento"
# t.string "rol"
# t.string "mt"
# t.float "coeficiente"
# t.string "tipo_propiedad"
# t.string "torre"
# t.bigint "user_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.bigint "recinto_id"
# t.index ["recinto_id"], name: "index_propiedads_on_recinto_id"
# t.index ["user_id"], name: "index_propiedads_on_user_id"

permit_params :direccion, :numero, :departamento, :rol, :mt, :coeficiente, :tipo_propiedad, :torre, :user_id, :created_at, :updated_at, :recinto_id

index do

  column "Tipo_propiedad" do |rec|
    rec.recinto.tipo_propiedad
  end
  column "Nombre_Recinto" do |rec|
    rec.recinto.nombre
  end
  column :direccion
  column :numero
  column :departamento
  column :rol
  column :mt
  column :coeficiente
  column :tipo_propiedad
  column :torre
  column "User" do |prop|
    prop.user.nombre
  end
  column :created_at
  column :updated_at

  actions
end

#crea el formulario para ingresar propiedad new
form do |f|
  inputs 'agregando un nueva propiedad' do
    input :direccion
    input :numero
    input :departamento
    input :rol
    input :mt
    input :tipo_propiedad
    input :torre
    # input :user_id, :label => 'Usuario', :as => :select, :collection => User.all.map{|u| ["#{u.nombre}, #{u.apellido_paterno}", u.id]}
    input :user_id, :label => 'Usuario', :as => :select, :collection => User.all.map{|u| ["#{u.nombre}", u.id]}
    input :recinto_id, :label => 'Recinto', :as => :select, :collection => Recinto.all.map{|u| ["#{u.nombre}", u.id]}
  end
  actions
end

# controller do
#   def update
#       if (params[:user][:password].blank?&& params[:user][:password_confirmation].blank?)
#            params[:user].delete("password")
#            params[:user].delete("password_confirmation")
#       end
#     super
#   end
# end

end
