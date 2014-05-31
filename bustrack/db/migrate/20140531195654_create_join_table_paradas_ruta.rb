class CreateJoinTableParadasRuta < ActiveRecord::Migration
  def change
    create_join_table :paradas, :rutas , :id => false do |t|
      # t.index [:parada_id, :ruta_id]
      # t.index [:ruta_id, :parada_id]
    end
  end
end