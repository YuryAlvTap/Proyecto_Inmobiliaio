class ExpensesController < InheritedResources::Base

  private

    def expense_params
      params.require(:expense).permit(:item_gasto, :tipo_gasto, :periodo_gasto, :tipo_gasto_id, :recinto_id)
    end
end

