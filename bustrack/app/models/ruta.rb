class Ruta < ActiveRecord::Base
  has_and_belongs_to_many :parada
end
