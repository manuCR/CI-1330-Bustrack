class CreateRutas < ActiveRecord::Migration
  def change
    create_table :rutas do |t|
      t.string :nombre
      t.integer :precio
      t.float :inicio_lat
      t.float :inicio_long
      t.float :fin_lat
      t.float :fin_long
      t.string :horario
      t.string :frecuencia

      t.timestamps
    end
  end
end
