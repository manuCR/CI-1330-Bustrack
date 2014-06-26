class User < ActiveRecord::Base
  has_many :rutas_usuario
  has_many :ruta, through: :rutas_usuario
  has_many :authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
