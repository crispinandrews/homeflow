class PropertiesController < ApplicationController

  def index
    @homeflow_data = Property.new.search
    filter_data_by_query
  end

private

  def filter_data_by_query
    @search_keys = request.parameters
    @property_match_array = []
    @homeflow_data.each do |property|
    (property.keys & @search_keys.keys).each do |k|
      if ("#{property[k]}" == "#{@search_keys[k]}") || (property['price_value'] <= @search_keys['price_value'].to_i)
        @property_match_array.push(property)
      end
    end
  end
    @search_results = @property_match_array.uniq
  end
end
