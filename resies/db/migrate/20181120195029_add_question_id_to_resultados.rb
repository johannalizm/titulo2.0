class AddQuestionIdToResultados < ActiveRecord::Migration[5.1]
  def change
    add_reference :resultados, :question, foreign_key: true
  end
end
