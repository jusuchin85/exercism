class TwoFer

  # method to return a message based on the passed name
  # default value is "you"
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end

# Example messages
puts TwoFer.two_fer('Alice')
puts TwoFer.two_fer('Bon')
puts TwoFer.two_fer
puts TwoFer.two_fer('Zaphod')
