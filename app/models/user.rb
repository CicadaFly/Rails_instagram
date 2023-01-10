class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_one_attached :profile_pic
  # class_name: "post", foreign_key: "reference_id"
  has_many :likes
  has_many :comments
end
