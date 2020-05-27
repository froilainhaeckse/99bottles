# frozen_string_literal: true

class Bottles
  def verse(bottles_count)
    "#{bottles_count} bottles of beer on the wall, #{bottles_count} bottles of beer.
Take one down and pass it around, #{bottles_count - 1} bottles of beer on the wall.
"
  end
end
