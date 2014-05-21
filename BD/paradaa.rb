class Paradaa < ActiveRecord::Base
  has_and_belongs_to_many :ruta
  has_many :bus, through: :ruta
end