class TipoGastosController < InheritedResources::Base

  private

    def tipo_gasto_params
      params.require(:tipo_gasto).permit(:descripcion_gasto)
    end
end

