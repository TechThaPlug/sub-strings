
require_relative "substrings"

def main
  dictionary = %w[
    below down go going horn how howdy it i low own
    part partner sit
  ]

  puts "=" * 50
  puts "             SUB STRINGS FINDER"
  puts "=" * 50

  puts "\nExample 1: Single word"

  text = "below"

  puts "Input: #{text}"
  puts "Dictionary: #{dictionary.join(', ')}"
  puts "Results: #{substrings(text, dictionary)}"

  puts "\nExample 2: Multiple words"

  text = "Howdy partner, sit down! How's it going?"

  puts "Input: #{text}"
  puts "Results: #{substrings(text, dictionary)}"

  puts "\nExample 3: Repeated words"

  text = "go go going going"

  puts "Input: #{text}"
  puts "Results: #{substrings(text, dictionary)}"

  puts "\nExample 4: Case-insensitive matching"

  text = "BELOW HowDy PARTNER"

  puts "Input: #{text}"
  puts "Results: #{substrings(text, dictionary)}"

  puts "\nSub Strings demonstration completed!"
  puts "=" * 50
end

main if __FILE__ == $PROGRAM_NAME
