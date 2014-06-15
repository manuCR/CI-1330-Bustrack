class Gps < ActiveRecord::Base
   belongs_to :bus
   validates :id_gps, presence: true
end
