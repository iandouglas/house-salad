class SearchFacade

  def initialize(state)
    @state = state
    @pro_service = PropublicaService.new
  end

  def members
    members_info = get_house_members

    members_info[:results].map do |member|
      Member.new(member)
    end
  end

  def get_house_members
    @pro_service.house_members(@state)
  end
end
