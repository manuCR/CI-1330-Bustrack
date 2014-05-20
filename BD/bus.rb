class Bus < ActiveRecord::Base
  has_one :ruta
  has_many :paradaa, through: :ruta
end
