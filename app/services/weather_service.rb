require 'json'
require 'open-uri'

class WheatherService

  def initialize(booking)
    @url = "api.openweathermap.org/data/2.5/forecast?lat=#{booking.package.lat}&lon=#{booking.package.long}&APPID=#{ENV[WHEATHER_API_KEY:]}"
  end

  def get_weather
    weather_serialized = open(@WheatherService.url).read
    weather = JSON.parse(weather_serialized)
    puts wheather
  end
end
