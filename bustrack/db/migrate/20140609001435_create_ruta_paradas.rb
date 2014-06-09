class CreateRutaParadas < ActiveRecord::Migration
  def change
    create_table :ruta_paradas do |t|
      t.belongs_to :ruta
      t.belongs_to :parada
      t.integer :tipo
    end
  end
end
