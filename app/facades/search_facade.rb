class SearchFacade
    def self.get_poems_by_author(author)
      binding.pry
    end

    def self.poems_service
      @poems_service ||= PoemsService.new
    end

    def self.tone_service

    end
end
