class SearchController < ApplicationController
  def index
    author = params[:author]
    @poems = SearchFacade.get_poems_by_author(author)
  end
end
