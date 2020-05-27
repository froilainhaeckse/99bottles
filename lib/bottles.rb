# frozen_string_literal: true

class Bottles
  def verse(bottles_count)
    action = 'Take one down and pass it around'
    if bottles_count == 1
      old_bottle_stash = "#{bottles_count} bottle"
      new_bottle_stash = 'no more bottles'
      action = 'Take it down and pass it around'
    elsif bottles_count == 2
      old_bottle_stash = "#{bottles_count} bottles"
      new_bottle_stash = "#{bottles_count - 1} bottle"
    elsif bottles_count == 0
      old_bottle_stash = 'no more bottles'
      bottles_count = 99
      new_bottle_stash = "#{bottles_count} bottles"
      action = 'Go to the store and buy some more'
    else
      old_bottle_stash = "#{bottles_count} bottles"
      new_bottle_stash = "#{bottles_count - 1} bottles"
    end

    "#{old_bottle_stash.capitalize} of beer on the wall, #{old_bottle_stash} of beer.
#{action}, #{new_bottle_stash} of beer on the wall.
"
  end

  def verses(*args)
    args.map { |bottles_count| Bottles.new.verse(bottles_count) } * "\n"
  end
end
