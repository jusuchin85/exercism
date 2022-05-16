class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  @result = nil

  def self.calculate(first_operand, second_operand, operation)
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
      "bye"
    end
  end
end

# puts SimpleCalculator.calculate(16, 51, "+")
# puts SimpleCalculator.calculate(32, 6, "*")
# puts SimpleCalculator.calculate(512, 4, "/")