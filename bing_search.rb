require 'rest-client'

search = ''

response = RestClient.get 'https://bing.com/'

puts "Response Code: #{response.code}"

puts "Response Cookies"
puts response.cookies

puts "Response Headers"

puts response.headers

puts "Response Body"
puts response.body
