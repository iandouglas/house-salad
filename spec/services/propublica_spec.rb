require 'rails_helper'

describe 'Propublica Service' do
  it 'can return house members' do
    pro_service = PropublicaService.new
    results = pro_service.house_members('CO')

    expect(results).to be_a(Hash)
    expect(results[:status]).to eq('OK')
    expect(results[:results]).to be_an(Array)
  end
end
