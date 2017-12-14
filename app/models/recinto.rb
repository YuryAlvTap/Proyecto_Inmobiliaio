class Recinto < ApplicationRecord
    # valida que el nombre sea obligatorio
    validates :nombre, presence: true
    has_many :propiedads
    has_many :users, through: :propiedads
    belongs_to :tipo_propiedad
end
