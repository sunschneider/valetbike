class User < ApplicationRecord
  validates_presence_of :email,
                        :password
  
  has_many :rented_bikes, class_name: :Bike, foreign_key: :current_user_id
end
