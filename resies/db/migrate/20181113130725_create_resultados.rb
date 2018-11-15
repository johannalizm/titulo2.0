class CreateResultados < ActiveRecord::Migration[5.1]
  def change
    create_table :resultados do |t|
      t.string :respuesta
      t.string :comentario
      t.string :verificacion
      t.string :descripcion
      t.references :formulario, foreign_key: true

      t.timestamps
    end
  end
end
