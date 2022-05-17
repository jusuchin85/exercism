=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
    MATCHER = /[^a-zA-Z0-9]/

    def self.abbreviate(text)
        text.gsub(MATCHER, ' ').split(' ').map(&:chr).join.upcase
    end
end
