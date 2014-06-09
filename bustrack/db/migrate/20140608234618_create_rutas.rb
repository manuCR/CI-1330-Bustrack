class CreateRutas < ActiveRecord::Migration
  def change
    create_table :rutas do |t|
      t.string :nombre
      t.string :frecuencia
      t.integer :precio
      t.string :horario

      t.timestamps
    end
  end
end
