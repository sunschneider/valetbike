class Station < ApplicationRecord
  validates_presence_of    :identifier,
                           :name,
                           :address,
                           :longitude,
                           :latitude
  validates_uniqueness_of  :identifier,
                           :longitude,
                           :latitude

  has_many :docked_bikes, class_name: :Bike, foreign_key: :current_station_id

end
