class SearchController < ApplicationController

  def search
    @query = params[:query]
    @results = Listing.search @query
  end

end
