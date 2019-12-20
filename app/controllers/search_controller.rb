class SearchController < ApplicationController
  def index
    render locals: {
      search_results: StationSearch.new(params[:location])
    }
  end
end
