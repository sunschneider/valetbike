class AddLongAndLatToStations < ActiveRecord::Migration[6.1]
  def change
    add_column :stations, :longitude, :float
    add_column :stations, :latitude, :float
  end
end
