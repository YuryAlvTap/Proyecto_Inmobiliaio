class Propiedad < ApplicationRecord
  belongs_to :user
  belongs_to :recinto
end
