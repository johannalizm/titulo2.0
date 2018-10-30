class CreatePregunta < ActiveRecord::Migration[5.1]
  def change
    create_table :pregunta do |t|
      t.string :identificador
      t.string :pregunta
      t.string :categoria
      t.string :subcategoria
      t.string :tiporespuesta

      t.timestamps
    end
  end
end
