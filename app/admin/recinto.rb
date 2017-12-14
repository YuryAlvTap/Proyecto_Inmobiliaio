ActiveAdmin.register Recinto do
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

permit_params :nombre, :tipo_propiedad_id, :direccion_recinto, :numero_recinto,  :comuna_recinto, :ciudad_recinto, :region_recinto, :pais_recinto, :ubicacion_recinto, :created_at

index do
  column :nombre
  column "tipo_propiedad" do |prop|
    prop.tipo_propiedad.name
  end
  column :direccion_recinto
  column :numero_recinto
  column :comuna_recinto
  column :ciudad_recinto
  column :region_recinto
  column :pais_recinto
  column :ubicacion_recinto
  column :created_at

   actions
end

#crea el formulario para ingresar usuario new
form do |f|
  inputs 'agregando un nuevo recinto' do
    input :nombre
    input :tipo_propiedad_id, :label => 'tipo_propiedad', :as => :select, :collection => TipoPropiedad.all.map{|u| ["#{u.name}", u.id]}
    input :direccion_recinto
    input :numero_recinto
    input :comuna_recinto
    input :ciudad_recinto
    input :region_recinto
    input :pais_recinto
    input :ubicacion_recinto
  end
  actions
end


end
