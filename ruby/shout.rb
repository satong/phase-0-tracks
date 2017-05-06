=begin
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
=end

# Release 3: Convert a Standalone Module to a Mixin
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Children
  include Shout
end

class Parents
  include Shout
end

# Release 3 driver code
child = Children.new
p child.yell_angrily("I hate school")
p child.yelling_happily("I love candy")

parent = Parents.new
p parent.yell_angrily("I hate work")
p parent.yelling_happily("I love vacation")
