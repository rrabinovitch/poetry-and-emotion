class Poem
  attr_reader :title, :author, :lines

  def initialize(poem_data)
    @title = poem_data[:title]
    @author = poem_data[:author]
    @lines = poem_data[:lines]
  end
end
