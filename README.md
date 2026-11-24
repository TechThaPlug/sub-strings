# Sub Strings

A Ruby implementation of the Sub Strings project from The Odin Project.

## Description

This project implements a `substrings` method that searches a given string for words from a supplied dictionary and returns a hash containing each matching substring and its occurrence count.

## Features

- Case-insensitive substring matching.
- Supports multiple words and sentences.
- Counts repeated substring occurrences.
- Preserves dictionary words in lowercase.
- Handles punctuation and whitespace.
- Supports overlapping substring matches.
- Handles empty strings and empty dictionaries.

## Requirements

- Ruby 4.0.10 or later.

## Usage

Run the demonstration:

```bash
ruby main.rb
```

Example:

```ruby
dictionary = ["below", "down", "go", "going", "low"]

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}
```

## Running Tests

Run the automated test suite:

```bash
ruby -I spec spec/substrings_spec.rb
```

## Project Structure

```text
sub-strings/
├── spec/
│   └── substrings_spec.rb
├── substrings.rb
├── main.rb
├── README.md
├── .gitignore
├── LICENSE
└── .ruby-version
```

## Author

Anthony W. Maina

## License

This project is licensed under the MIT License.
