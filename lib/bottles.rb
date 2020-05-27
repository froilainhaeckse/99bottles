# frozen_string_literal: true

class Bottles
  def verse(bottles_count)
    taking_down = 'one'
    if bottles_count == 1
      old_bottle_stash = "#{bottles_count} bottle"
      new_bottle_stash = 'no more bottles'
      taking_down = 'it'
    elsif bottles_count == 2
      old_bottle_stash = "#{bottles_count} bottles"
      new_bottle_stash = "#{bottles_count - 1} bottle"
    else
      old_bottle_stash = "#{bottles_count} bottles"
      new_bottle_stash = "#{bottles_count - 1} bottles"
    end

    "#{old_bottle_stash} of beer on the wall, #{old_bottle_stash} of beer.
Take #{taking_down} down and pass it around, #{new_bottle_stash} of beer on the wall.
"
  end
end
