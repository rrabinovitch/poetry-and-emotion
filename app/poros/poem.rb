class Poem
  attr_reader :title, :author, :lines, :tone

  def initialize(poem_data)
    @title = poem_data[:title]
    @author = poem_data[:author]
    @lines = poem_data[:lines]
    @tone = tone
  end

  def full_text
    @lines.join(' ')
  end

  def tone
    self.tone_service.get_poem_tone(full_text)
  end

  def self.tone_service
    @tone_service ||= ToneService.new
  end
end
