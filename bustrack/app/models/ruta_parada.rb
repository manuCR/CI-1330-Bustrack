class RutaParada < ActiveRecord::Base
  belongs_to :ruta
  belongs_to :parada
  before_create :default_values
  private
  def default_values
     self.tipo ||= 0
  end
end