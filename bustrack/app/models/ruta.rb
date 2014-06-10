class Ruta < ActiveRecord::Base
  has_many :ruta_parada
  has_many :parada, through: :ruta_parada
  has_many :rutas_usuario
  has_many :user, through: :rutas_usuario
end
