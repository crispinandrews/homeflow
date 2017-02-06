require 'httparty'
require 'json'
require 'envyable'

class Property < ApplicationRecord
  def search
    data = Homeflow::API::Property.where(channel: "sales").results.properties
    JSON.parse(data.to_json)
  end
end
