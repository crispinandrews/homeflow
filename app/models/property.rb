require 'httparty'
require 'json'
require 'envyable'

class Property < ApplicationRecord
  def search
    url = 'http://index1.homeflow.co.uk/properties/4631183?api_key=' + ENV['HOMEFLOW_API_KEY']
    response = HTTParty.get(url)
    data = JSON.parse(response.to_json)
  end
end
