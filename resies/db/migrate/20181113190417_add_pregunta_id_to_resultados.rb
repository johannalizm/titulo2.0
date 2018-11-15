class AddPreguntaIdToResultados < ActiveRecord::Migration[5.1]
  def change
    add_reference :resultados, :pregunta, foreign_key: true
  end
end
