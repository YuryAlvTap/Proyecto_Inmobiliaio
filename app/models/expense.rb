class Expense < ApplicationRecord
  belongs_to :tipo_gasto
  belongs_to :recinto
end
