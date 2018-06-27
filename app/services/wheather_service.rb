    require 'json'
    require 'open-uri'

class WheatherService

  def initialize(travel_package)
    @url = "http://api.openweathermap.org/data/2.5/forecast?lat=#{travel_package.lat}&lon=#{travel_package.long}&APPID=#{ENV['WEATHER_API_KEY']}"
  end

  def get_weather

    weather_serialized = open(@url).read
    weather = JSON.parse(weather_serialized)
  end
end
