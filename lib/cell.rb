class Cell
  attr_reader :content, :been_hit
  def initialize(content = 'water')
    @content = content
    @been_hit = false
  end

  def place_ship(this_ship)
    @content = this_ship
  end

  def shoot!
    fail 'You already shot there Einstein!' if @been_hit == true
    @been_hit = true
    hit_or_miss
  end

  def hit_or_miss
    @content.hit unless @content == 'water'
    return 'miss' if @content == 'water'
  end
end
