# frozen_string_literal: true

# !/usr/bin/env ruby

require_relative './bing_search'

url = 'https://bing.com'

search = BingSearch.new(url)

puts "Response code:#{search.response_code}"
puts '----'

puts 'Response cookies:'
puts search.cookies
puts '-----'

puts 'Response header:'
puts search.header
puts '-----'

puts 'Response body:'
puts search.body
