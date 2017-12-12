require 'geocoder'


print '어디가 궁금하세요? : '
location = gets.chomp!

p loCord = Geocoder.coordinates('에펠탑')