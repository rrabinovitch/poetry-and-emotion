class SearchFacade
    def self.get_poems_by_author(author)
      poems = poems_service.find_poems_by_author(author)
      @poems = poems.map do |poem_data|
        Poem.new(poem_data)
      end
    end

    def self.poems_service
      @poems_service ||= PoemsService.new
    end

    def self.tone_service

    end
end
