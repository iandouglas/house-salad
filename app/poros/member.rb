class Member

  def self.house_members(state)
    pro_service = PropublicaService.new
    members_data = pro_service.house_members(state)
    members_data[:results].map do |member|
      Member.new(member)
    end
  end

  attr_reader :name,
              :role,
              :party,
              :district

  def initialize(member_info)
    @name = member_info[:name]
    @role = member_info[:role]
    @party = member_info[:party]
    @district = member_info[:district]
  end

end
