# frozen_string_literal: true

class Bottles
  def verse(bottles_count)
    if bottles_count > 2
      "#{bottles_count} bottles of beer on the wall, #{bottles_count} bottles of beer.
Take one down and pass it around, #{bottles_count - 1} bottles of beer on the wall.
"
    else
      "#{bottles_count} bottles of beer on the wall, #{bottles_count} bottles of beer.
Take one down and pass it around, #{bottles_count - 1} bottle of beer on the wall.
"
    end
  end
end
