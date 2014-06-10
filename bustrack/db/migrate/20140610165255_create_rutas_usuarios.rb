class CreateRutasUsuarios < ActiveRecord::Migration
  def change
    create_table :rutas_usuarios do |t|
      t.belongs_to :ruta
      t.belongs_to :user

      t.timestamps
    end
  end
end
