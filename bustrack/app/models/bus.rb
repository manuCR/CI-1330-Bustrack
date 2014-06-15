class Bus < ActiveRecord::Base
   has_one :gps
   belongs_to :ruta
   validates :placa, presence: true
   validates :placa, format: { with: /(SJB|AB|CB|GB|HB|LB|PB)-([0-9]{3})\z/ }
   validates :placa, uniqueness: true
end
