json.extract! expense, :id, :item_gasto, :tipo_gasto, :periodo_gasto, :tipo_gasto_id, :recinto_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
