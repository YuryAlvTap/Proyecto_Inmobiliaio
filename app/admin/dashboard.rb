ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

      columns   do
        column   do
          panel   "Usuarios"  do
            ul do
              li  "Usuarios registrados: #{User.count}"
              li  "Administradores registrados: #{ AdminUser.count}"
              end
          end
        end

        column   do
          panel   "Propiedades"  do
            ul do
              li  "Recintos registrados: #{Recinto.count}"
              li  "Propiedades registradas: #{ Propiedad.count}"
              end
          end
        end

      end

      # panel "Gráfico" do
      # render 'shared/_chart'
      # end
  end # content


end
