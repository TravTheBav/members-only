class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy

  validates :username, length: { in: 3..15 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 40 }, uniqueness: true
  validates :password, length: { in: 8..20 }
end
