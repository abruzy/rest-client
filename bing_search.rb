# frozen_string_literal: true

# !/usr/bin/env ruby

require 'rest-client'

# A simple Http Request using Rest-Client Bing search for ruby

class BingSearch
  attr_accessor :url, :querry

  def initialize(url, *querry)
    @url = url
    @querry = querry || ' '
  end

  def response_code
    rest_client.code
  end

  def cookies
    rest_client.cookies
  end

  def header
    rest_client.headers
  end

  def body
    rest_client.body
  end

  private

  def rest_client
    RestClient.get @url, params: { q: @querry }
  end
end

url = 'https://bing.com'

search = BingSearch.new(url, 'who is man')

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
