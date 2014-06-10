class RutasUsuario < ActiveRecord::Base
  belongs_to :ruta
  belongs_to :user
end
