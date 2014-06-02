class CreateParadas < ActiveRecord::Migration
  def change
    create_table :paradas do |t|
      t.string :nombre
      t.boolean :techo
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
