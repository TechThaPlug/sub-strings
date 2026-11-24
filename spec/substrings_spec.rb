
require "minitest/autorun"
require_relative "../substrings"

class SubstringsTest < Minitest::Test
  DICTIONARY = %w[
    below down go going horn how howdy it i low own
    part partner sit
  ].freeze

  def test_finds_substrings_in_single_word
    expected = { "below" => 1, "low" => 1 }

    assert_equal expected, substrings("below", DICTIONARY)
  end

  def test_handles_multiple_words
    expected = {
      "down" => 1,
      "go" => 1,
      "going" => 1,
      "how" => 2,
      "howdy" => 1,
      "it" => 2,
      "i" => 3,
      "own" => 1,
      "part" => 1,
      "partner" => 1,
      "sit" => 1
    }

    text = "Howdy partner, sit down! How's it going?"

    assert_equal expected, substrings(text, DICTIONARY)
  end

  def test_is_case_insensitive
    expected = { "below" => 1, "low" => 1 }

    assert_equal expected, substrings("BELOW", DICTIONARY)
  end

  def test_counts_repeated_substrings
    assert_equal({ "go" => 3 }, substrings("go go GO", DICTIONARY))
  end

  def test_returns_empty_hash_when_no_match
    assert_equal({}, substrings("hello world", DICTIONARY))
  end

  def test_preserves_overlapping_matches
    assert_equal({ "aa" => 2 }, substrings("aaaa", ["aa"]))
  end

  def test_handles_empty_string
    assert_equal({}, substrings("", DICTIONARY))
  end

  def test_handles_empty_dictionary
    assert_equal({}, substrings("below", []))
  end

  def test_ignores_empty_dictionary_entries
    assert_equal({ "below" => 1 }, substrings("below", ["", "below"]))
  end

  def test_handles_punctuation
    assert_equal(
      { "how" => 1, "howdy" => 1 },
      substrings("Howdy, how are you?", DICTIONARY)
    )
  end
end
