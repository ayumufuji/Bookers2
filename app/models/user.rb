class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
         has_many :books
         has_many :post_comments, dependent: :destroy
         has_many :favorites, dependent: :destroy
         attachment :profile_image

   validates :name, {presence: true, length: { minimum: 2, maximum: 20 },uniqueness: { case_sensitive: false }}
   validates :introduction, {length: { maximum: 50 }}

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
