class WeatherApi

  attr_reader :value

  def get_api
    url = 'http://api.openweathermap.org/data/2.5/weather?q=London&units=metric&APPID=b4d9ad4b01c56f6638dcdd451d752a2f'
    response = RestClient.get(url)
    hash = JSON.parse(response)
    hash['main'].each do |x|
      return @value = x[1]
    end
  end

end
