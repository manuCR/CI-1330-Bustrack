class User < ActiveRecord::Base
  has_many :rutas_usuario
  has_many :ruta, through: :rutas_usuario
  has_many :authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def apply_omniauth(omniauth)
    self.email = omniauth['info']['email'] if email.blank?
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  def password_required?
    (authentications.empty? || !password.blank?) && super
  end

end
