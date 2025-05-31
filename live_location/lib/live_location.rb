require 'net/http'
require 'json'

module LiveLocation
  class Error < StandardError; end

  API_URL = 'https://ipinfo.io/json'

  def self.fetch
    uri = URI(API_URL)
    response = Net::HTTP.get_response(uri)

    unless response.is_a?(Net::HTTPSuccess)
      raise Error, "Failed to fetch data from API: #{response.code} #{response.message}"
    end

    JSON.parse(response.body)
  rescue StandardError => e
    raise Error, "Error fetching location: #{e.message}"
  end

  def self.city
    fetch['city']
  end

  def self.region
    fetch['region']
  end

  def self.country
    fetch['country']
  end

  def self.loc
    fetch['loc']
  end

  def self.timezone
    fetch['timezone']
  end
end
