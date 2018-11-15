class Resultado < ApplicationRecord
  belongs_to :formulario, optional: true
end
