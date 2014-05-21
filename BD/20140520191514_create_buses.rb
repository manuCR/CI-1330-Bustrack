class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :placa
      t.string :codigoGPS

      t.timestamps
    end
  end
end
