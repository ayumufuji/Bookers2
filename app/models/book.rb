class Book < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  belongs_to :user
  validates :title, {presence: true, length: { maximum: 200 }}
  validates :body, presence: true

    validates :body,
    length: { maximum: 200 }

end
