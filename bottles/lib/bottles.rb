class Bottles

  def number_of_bottles(n)
    if n == 1
      "1 bottle"
    else
      "#{n} bottles"
    end
  end

  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{number_of_bottles(n-1)} of beer on the wall.\n"
    end
  end

  def verses(n, m)
    n.downto(m).map { |i| verse(i) + "\n"  }.join("")
  end

  def sing
    verses(99, 0)
  end

end
