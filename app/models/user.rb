class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :wishlists,  dependent: :destroy
  has_many :wishlistsed_properties, through: :wishlists, source: :property, dependent: :destroy
  has_many :reservations,  dependent: :destroy
  has_many :reserved_properties, through: :reservations, source: :property, dependent: :destroy
end
