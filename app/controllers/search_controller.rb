class SearchController < ApplicationController
  def index
    state = params[:state]

    conn = Faraday.new(url: 'https://api.propublica.org') do |f|
      f.headers['X-API-Key'] = ENV['PROPUBLICA_KEY']
    end

    response = conn.get("/congress/v1/members/house/#{state}/current.json")

    members_info = JSON.parse(response.body, symbolize_names: true)
    @members = members_info[:results]
  end
end
