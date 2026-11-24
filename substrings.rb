
def substrings(text, dictionary)
  result = Hash.new(0)

  normalized_text = text.downcase

  dictionary.each do |word|
    normalized_word = word.downcase

    next if normalized_word.empty?

    matches = normalized_text.scan(Regexp.new(Regexp.escape(normalized_word)))

    result[normalized_word] = matches.length unless matches.empty?
  end

  result
end
