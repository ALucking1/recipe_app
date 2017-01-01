class WeatherApi

  attr_reader :value

  def get_api
    url = 'http://api.openweathermap.org/data/2.5/weather?q=London&units=metric&APPID=b4d9ad4b01c56f6638dcdd451d752a2f'
    response = RestClient.get(url)
    hash = JSON.parse(response)
    hash['main'].each do |x|
      @value = x[1]
      return @value
    end
  end

  def intro
    if @value < 10
      'Brrr!'
    elsif @value < 15 && @value > 10
      'Hmm, not too cold.'
    elsif @value < 20 && @value > 15
      'Mild, mild, mild.'
    elsif @value < 30 && @value > 20
      'Well, it\'s positively balmy!'
    else
      'You want to eat?!'
    end
  end

end
