# frozen_string_literal: true


require 'rest-client'

# A simple Http Request using Rest-Client Bing search for ruby

class BingSearch
  attr_reader :url, :querry


  def initialize(url, querry = nil)
    @url = url
    @querry = querry || ' '
    puts @querry
  end

  def response_code
    response.code
  end

  def cookies
    response.cookies
  end

  def header
    response.headers
  end

  def body
    response.body
  end

  private

  def response
   @response ||= RestClient.get @url, params: { q: @querry }
  end
end
