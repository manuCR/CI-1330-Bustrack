class Parada < ActiveRecord::Base
  has_many :ruta_parada
  has_many :ruta, through: :ruta_parada
  validates :nombre, presence: true
end
