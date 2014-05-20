class CreateParadaas < ActiveRecord::Migration
  def change
    create_table :paradaas do |t|
      t.string :codigo
      t.float :coordX
      t.float :coordY

      t.timestamps
    end
  end
end
