class Werewolf

  attr_reader :location, :name, :human, :permawolf, :werewolf

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @permawolf = false
  end

  def human?
    @human
  end

  def change!
    if @permawolf == true
      @werewolf = true
      @human = false
    elsif @human == true
      @human = false
      @werewolf = true
    else
      @human = true
    end
  end

  def werewolf?
    @werewolf
  end

  def permawolf!
    @human = false
    @werewolf = true
    @permawolf = true
  end

end
