class SearchController < ApplicationController
  def index
    state = params[:state]
    search = SearchFacade.new(state)
    @members = search.members
  end
end
