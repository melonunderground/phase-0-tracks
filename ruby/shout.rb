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