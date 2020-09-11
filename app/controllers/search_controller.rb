class SearchController < ApplicationController
  def index
    author = params[:author]
    @poems = SearchFacade.get_poems_by_author(author)

    # poems_db_conn = Faraday.new(url: 'https://poetrydb.org')
    # poems_db_response = poems_db_conn.get("/author/#{author}")
    # poems = JSON.parse(poems_db_response.body, symbolize_names: true)
    # @first_ten_poems = poems.take(10)
  end
end
