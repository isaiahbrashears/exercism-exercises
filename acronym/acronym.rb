=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

module Acronym
  def self.abbreviate(string_to_abbreviate)

    array_of_strings = string_to_abbreviate.gsub('-',' ').split(" ")
    
    abbreviation = []

    array_of_strings.each { |str| abbreviation << str[0].upcase }

    abbreviation.join('')
  end
end