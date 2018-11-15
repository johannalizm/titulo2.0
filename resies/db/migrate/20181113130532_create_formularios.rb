class CreateFormularios < ActiveRecord::Migration[5.1]
  def change
    create_table :formularios do |t|
      t.string :nombre_encargado
      t.string :telefono
      t.date :fecha

      t.timestamps
    end
  end
end
