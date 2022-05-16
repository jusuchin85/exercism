class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = %w[+ / *].freeze
  @result = nil

  def self.calculate(first_operand, second_operand, operation)
    if (!first_operand.is_a? Integer) || (!second_operand.is_a? Integer)
      raise ArgumentError
    end

    if ALLOWED_OPERATIONS.include? operation
      if operation == "+"
        @result = first_operand + second_operand
      elsif operation == "*"
        @result = first_operand * second_operand
      else
        @result = first_operand / second_operand
      end
      "#{first_operand} #{operation} #{second_operand} = #{@result}"
    else
      raise UnsupportedOperation
    end
  end
end

# # Step 1
# puts SimpleCalculator.calculate(16, 51, "+")
# puts SimpleCalculator.calculate(32, 6, "*")
# puts SimpleCalculator.calculate(512, 4, "/")

# # Step 2
# puts SimpleCalculator.calculate(1, 2, '-')

# # Step 3
# puts SimpleCalculator.calculate(1, "2", "*")

# # Step 4
# puts SimpleCalculator.calculate(512, 0, "/")
