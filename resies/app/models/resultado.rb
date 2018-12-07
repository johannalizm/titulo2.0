class Resultado < ApplicationRecord
  belongs_to :formulario, optional: true
  belongs_to :question


end
