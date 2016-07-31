require 'pry'
require 'json'

file = File.read('geoserver-GetFeature.geojson')
data = JSON.parse(file)
#binding.pry

suburb_arr = [ "DANDENONG", "DANDENONG SOUTH", "GEELONG", "GLENROY", "NORTHCOTE", "SPRINGVALE", "THORNBURY", "WYNDHAM VALE" ]
@suburb_arr = []

suburb_arr.each do |sub_name|

  data["features"].each do |suburb| sub_name

    if suburb["properties"]["vic_loca_2"] == sub_name
#binding.pry
      @suburb_arr.push(suburb)

    end

  end

end

#binding.pry

file2 = File.open('output_arr_file', 'w')

@suburb_arr.each do |suburb|
  file2.print(suburb)
  file2.puts('')
end
