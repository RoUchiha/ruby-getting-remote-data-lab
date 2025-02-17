# Write your code here

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_accessor :link

    def initialize(link)
        @link = link
    end

    def get_response_body
        uri = URI.parse(@link)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        programs = JSON.parse(self.get_response_body)
    end


end