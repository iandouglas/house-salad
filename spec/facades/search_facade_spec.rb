require 'rails_helper'

describe 'SearchFacade' do
  before(:each) do
    @search = SearchFacade.new('CO')
  end

  it '#get_house_members' do
    actual = @search.get_house_members
    expect(actual).to be_a(Hash)
    expect(actual[:results]).to be_an(Array)
    expect(actual[:results].first).to have_key(:name)
    expect(actual[:results].first).to have_key(:role)
    expect(actual[:results].first).to have_key(:party)
    expect(actual[:results].first).to have_key(:district)
  end

  it '#members' do
    actual = @search.members
    expect(actual).to be_an(Array)
    expect(actual.first).to be_an_instance_of(Member)
  end
end
