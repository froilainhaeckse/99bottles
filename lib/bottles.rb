# frozen_string_literal: true

class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect{ |i|verse(i) unless i < ending }.join("\n")
  end

  def verse(number)
    "#{amount_of_bottles(number).capitalize} of beer on the wall, " +
      "#{amount_of_bottles(number)} of beer.\n" +
      action(number) +
      "#{number.zero? ? amount_of_bottles(99) : amount_of_bottles(number - 1)} of beer on the wall.\n"
  end
end

def amount_of_bottles(number)
  return "#{number} bottle" if number == 1

  "#{number <= 0 ? 'no more' : number} bottles"
end

def action(number)
  return 'Go to the store and buy some more, ' if number.zero?

  "Take #{number == 1 ? 'it' : 'one'} down and pass it around, "
end
