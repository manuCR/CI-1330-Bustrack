class Ruta < ActiveRecord::Base
  has_many :ruta_parada
  has_many :parada, through: :ruta_parada
end
