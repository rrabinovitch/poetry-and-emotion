class PoemsService
  def find_poems_by_author(author)
    poems_conn = Faraday.new(url: 'https://poetrydb.org')
    poems_response = poems_conn.get("/author/#{author}")
    first_ten_results(JSON.parse(poems_response.body, symbolize_names: true))
  end

  def first_ten_results(json)
    json.take(10)
  end
end
