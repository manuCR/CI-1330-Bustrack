class CreateGpsS < ActiveRecord::Migration
  def change
    create_table :gps_s do |t|
      t.belongs_to :bus
      t.string :id_gps
      t.timestamps
    end
  end
end
