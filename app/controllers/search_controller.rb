class SearchController < ApplicationController
  def index
    state = params[:state]

    @members = Member.house_members(state)
  end
end
