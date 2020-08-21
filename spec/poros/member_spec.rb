require 'rails_helper'


describe 'Member' do
  it 'has attributes' do
    json = File.read('spec/fixtures/member_info.json')
    member_info = JSON.parse(json, symbolize_names: true)
    member = Member.new(member_info)

    expect(member).to be_an_instance_of(Member)
    expect(member).to respond_to(:name)
    expect(member).to respond_to(:role)
    expect(member).to respond_to(:party)
    expect(member).to respond_to(:district)
  end
end
