# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1,"o")
"zom".insert(2,"o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1," suspects")
#=> "the usual suspects"

" suspects".insert(0,"the usual")
# => "the usual suspects"

The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".split.join("")
"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".replace("122").to_i
"z".ord
#.ord returns the Integer ordinal of a one-character string
# => 122

# (What is the significance of the number 122 in relation to the character z?)
#American Standard Code for Information Interchange (ASCII), (...) is a character encoding based on the English alphabet. ASCII codes represent text in computers, communications equipment, and other devices that work with text. (...)
It currently defines codes for 128 characters: 33 are non-printing, mostly obsolete control characters that affect how text is processed, and 95 are printable characters. --Quote from Wikipedia- LOWER CASE character z is DEC 122 or HTML Number &#122

# "How many times does the letter 'a' appear in this string?".count("a")
# => 4