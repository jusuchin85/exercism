=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram

    # regex \p{L} is a unicode category for matching
    # any letter from any language
    # ref: https://www.regular-expressions.info/unicode.html#category
    MATCHER = /[^\p{L}]/

    def self.isogram?(string)
        cps = string.downcase.gsub(MATCHER, '').chars.to_a
        cps.length == cps.uniq.length
    end
end