class Character
  def initialize(character, morse)
    @character = character
    @morse = morse
  end

  def morse?(character)
    character == @morse
  end

  def character?(character)
    character == @character
  end

  def morse()
    @morse
  end

  def character()
    @character
  end
end