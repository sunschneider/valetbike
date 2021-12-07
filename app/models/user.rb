class User < ApplicationRecord
  validates_presence_of :email,
                        :password
  validates_uniqueness_of :email
  has_secure_password

  has_many :rented_bikes, class_name: :Bike, foreign_key: :current_user_id

end
