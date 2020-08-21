class Member

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
