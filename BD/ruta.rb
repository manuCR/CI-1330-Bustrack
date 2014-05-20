class Ruta < ActiveRecord::Base
  has_many :bus
  has_and_belongs_to_many :paradaa
end
