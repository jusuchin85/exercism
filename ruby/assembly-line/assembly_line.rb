class AssemblyLine

  MAX_CARS_PER_HOUR = 221
  SUCCESS_RATE_100 = 1.00
  SUCCESS_RATE_90 = 0.90
  SUCCESS_RATE_80 = 0.80
  SUCCESS_RATE_77 = 0.77
  MINUTES_PER_HOUR = 60

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed

    when 1..4
      (@speed * MAX_CARS_PER_HOUR) * SUCCESS_RATE_100
    when 5..8
      (@speed * MAX_CARS_PER_HOUR) * SUCCESS_RATE_90
    when 9
      (@speed * MAX_CARS_PER_HOUR) * SUCCESS_RATE_80
    when 10
      (@speed * MAX_CARS_PER_HOUR) * SUCCESS_RATE_77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / MINUTES_PER_HOUR).floor
  end
end

# # Step 1
# puts AssemblyLine.new(6).production_rate_per_hour

# # Step 2
# puts AssemblyLine.new(6).working_items_per_minute