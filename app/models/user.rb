class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_coupons, class_name: 'Coupon', foreign_key: :sender_id
  has_many :received_coupons, class_name: 'Coupon', foreign_key: :recipient_id
end
