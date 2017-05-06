# Release 1: Write a Simple Module

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end


# Release 1 driver code
p Shout.yell_angrily("AHH")
p Shout.yelling_happily("YAY")
