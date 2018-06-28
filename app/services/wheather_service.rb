    require 'json'
    require 'open-uri'

class WheatherService

  attr_reader :expected_temp, :humidity, :description

  def initialize(travel_package)
    @url = "http://api.openweathermap.org/data/2.5/forecast?lat=#{travel_package.lat}&lon=#{travel_package.long}&APPID=#{ENV['WEATHER_API_KEY']}"
    @expected_temp = nil
    @humidity = nil
    @description = nil
  end

  def get_weather
    now = DateTime.now
    date = DateTime.new(now.year, now.month, now.day, 15, 0, 0, )
    date = date + 4
    date = date.to_i

    weather_serialized = open(@url).read
    weather = JSON.parse(weather_serialized)
    weather = weather["list"]
    desired_weather = nil
    weather.each do |hash|
      #raise
      if hash["dt"] == date
        desired_weather = hash
      end
    end
    @expected_temp = (desired_weather["main"]["temp"]- 273.15).round
    @humidity = desired_weather["main"]["humidity"].round
    @description = desired_weather["weather"][0]["description"]
    return self


  end
end
