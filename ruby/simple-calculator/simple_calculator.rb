class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  def self.calculate(first_operand, second_operand, operation)
    begin
      raise ArgumentError unless first_operand.is_a?(Integer)
      raise ArgumentError unless second_operand.is_a?(Integer)
      unless ALLOWED_OPERATIONS.include?(operation)
        raise UnsupportedOperation.new
      end
      if second_operand == 0 && operation == "/"
        raise ZeroDivisionError.new("Division by zero is not allowed.")
      end

      result = first_operand.send(operation.to_sym, second_operand)
      return "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError => exception
      return exception.message
    end
  end
  class UnsupportedOperation < StandardError
  end
end

# Step 1
# puts SimpleCalculator.calculate(16, 51, "+")
# puts SimpleCalculator.calculate(32, 6, "*")
# puts SimpleCalculator.calculate(512, 4, "/")

# Step 2
# puts SimpleCalculator.calculate(1, 2, '-')

# Step 3
# puts SimpleCalculator.calculate(1, "2", "*")

# Step 4
# puts SimpleCalculator.calculate(512, 0, "/")
