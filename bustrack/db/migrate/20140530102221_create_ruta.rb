class CreateRuta < ActiveRecord::Migration
  def change
    create_table :ruta do |t|
      t.string :nombre
      t.float :Inicio_Latitud
      t.float :Inicio_Longuitud
      t.float :Fin_Latitud
      t.float :Fin_Longuitud
      t.string :Frecuencia
      t.integer :Precio
      t.string :Horario

      t.timestamps
    end
  end
end
