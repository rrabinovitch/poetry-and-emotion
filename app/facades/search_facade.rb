class SearchFacade
    def self.get_poems_by_author(author)
      poems = poems_service.find_poems_by_author(author)
      poems.map do |poem_data|
        Poem.new(poem_data)
      end
    end

    # def self.get_poem_tone
    #   poems = get_poems_by_author(author)
    #   poems.map do |poem|
    #     binding.pry
    #     poem.tone = tone_service.get_poem_tone(poem.full_text)
    #   end
    # end

    def self.poems_service
      @poems_service ||= PoemsService.new
    end

    def self.tone_service
      @tone_service ||= ToneService.new
    end
end
