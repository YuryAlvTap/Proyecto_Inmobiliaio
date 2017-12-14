class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # valida que el nombre sea obligatorio
  validates :nombre, presence: true
  #validates :username, presence: true, uniqueness: true
  has_many :propiedads
  has_many :recintos, through: :propiedads
end
