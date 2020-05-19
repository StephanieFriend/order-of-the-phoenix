class SearchController < ApplicationController

  def index
    response = con.get('characters')
    json = JSON.parse(response.body, symbolize_names: true)
    x = json.sort_by_ofp
    binding.pry
  end

  def con
    Faraday.new('https://www.potterapi.com/v1/') do |f|
      f.params["key"] = ENV['HP-API-KEY']
    end
  end
end