require 'forecast_io'
require 'typhoeus/adapters/faraday'

Faraday.default_adapter = :typhoeus

ForecastIO.configure do |configuration|
  configuration.api_key = '1987f9c6fd29115cffd614220b3d6e2c'
end
# ForecastIO.api_key = '1987f9c6fd29115cffd614220b3d6e2c'

forecast = ForecastIO.forecast(37.8267, -122.423)

puts forecast