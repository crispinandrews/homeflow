class PropertiesController < ApplicationController

  def index
    @homeflow_data = Property.new.search
    @properties = @homeflow_data['result']
    filter_data_by_query
  end

private

  def filter_data_by_query
    @properties.each do |property|
      @property = property[1]
    end
    @search_keys = request.parameters
    @property_match_array = []
    (@property.keys & @search_keys.keys).each do |k|
      if ("#{@property[k]}" == "#{@search_keys[k]}") || (@property['price_value'] <= @search_keys['price_value'].to_i)
        puts @search_keys['price_value']
        puts @property['price_value']
        @property_match_array.push(@property)
      end
    end
    @search_results = @property_match_array.uniq
  end
end
