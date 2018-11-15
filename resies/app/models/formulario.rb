class Formulario < ApplicationRecord
  has_many :resultados, dependent: :destroy
  accepts_nested_attributes_for :resultados,  allow_destroy: true
end
