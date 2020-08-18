require 'rails_helper'

describe 'user can search for house members' do
  it 'user submits valid state name' do
    visit '/'

    select 'Colorado', from: :state
    click_on 'Locate Members of the House'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('7 Results')
    expect(page).to have_css('.member', count: 7)

    within(first:('.member')) do
      expect(page).to have_css('.name')
      name = find('.name').value
      expect(name).not_to be_empty

      expect(page).to have_css('.role')
      role = find('.role').value
      expect(role).not_to be_empty


      expect(page).to have_css('.party')
      party = find('.party').value
      expect(party).not_to be_empty

      expect(page).to have_css('.district')
      district = find('.district').value
      expect(distrtict).not_to be_empty
    end
  end
end
