class CreateRuta < ActiveRecord::Migration
  def change
    create_table :ruta do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
