namespace :import do
    desc "Import station from csv"

    task station_data: :environment do
        require 'csv'

        csv_text = File.read(Rails.root.join("notes", "csvs", "station-data.csv"))
        csv = CSV.parse(csv_text, headers: true, :encoding => "ISO-8859-1")
        csv.each do |row|
            np = Station.new({
            identifier: row["identifier"],
            name: row["name"],
            address: row["address"],
            dock_count: row["dock_station"]
            })
            np.save
        end
    end

    desc "import bikes from csv"
    task bike_data: :environment do
        require 'csv'

        csv_text = File.read(Rails.root.join("notes", "csvs", "bike-data.csv"))
        csv = CSV.parse(csv_text, headers: true, :encoding => "ISO-8859-1")
        csv.each do |row|
            b = Bike.new({
            identifier: row["identifier"],
            })
            b.save
        end
    end

end