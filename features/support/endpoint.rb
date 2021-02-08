class EndPoint
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?'
  def self.consulta(city_id)
    get("id=#{city_id}&appid=cf5ad87ae13d9c6fe3e36f1cd44daca8")
    
  end
end
