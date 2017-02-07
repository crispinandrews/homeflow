require 'rails_helper'

describe Property do

  it "receives hashed data" do
    homeflow_data = Property.new.search
    expect(homeflow_data).to be_a(Array)
  end
  # it "responds to JSON" do
  #   homeflow_data = Property.new.search
  #   expect(response.content_type).to eq(JSON)
  # end

end
