=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
end


module Yelling_Happily
  def self.yell_happily(words)
    words + "!!!" + ":}"
  end
end

p Shout.yell_angrily("hoooray")
p Yelling_Happily.yell_happily("argh")
=end

module Shout
  def spaz_out(getting_mad)
    puts "I can't take this anymore #{getting_mad}!"
  end
end

class Child
  include Shout
end

class Grandparent
  include Shout
end

child = Child.new
child.spaz_out("yaaaaaaaahhhhhh")

plane = Grandparent.new
plane.spaz_out("bllluuuurghhh")
