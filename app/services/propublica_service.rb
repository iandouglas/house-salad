class PropublicaService

  def house_members(state)
    response = conn.get("/congress/v1/members/house/#{state}/current.json")

    JSON.parse(response.body, symbolize_names: true)
  end

  private

    def conn
      Faraday.new(url: 'https://api.propublica.org') do |f|
        f.headers['X-API-Key'] = ENV['PROPUBLICA_KEY']
      end
    end
end
