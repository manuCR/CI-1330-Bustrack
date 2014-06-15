class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.belongs_to :ruta
      t.string :placa
      t.timestamps
    end
  end
end
