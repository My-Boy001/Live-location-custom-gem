require 'live_location'

begin
  puts "City: #{LiveLocation.city}"
  puts "Region: #{LiveLocation.region}"
  puts "Country: #{LiveLocation.country}"
  puts "Coordinates (loc): #{LiveLocation.loc}"
  puts "Timezone: #{LiveLocation.timezone}"
rescue LiveLocation::Error => e
  puts "Failed to fetch location data: #{e.message}"
end
