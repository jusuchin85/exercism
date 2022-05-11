class Lasagna

  EXPECTED_MINUTES_IN_OVEN = 40
  PREP_TIME_PER_LAYER = 2

  # method to calculate remaining oven time in minutes
  # subtracting actual minures from expected minutes (defined in EXPECTED_MINUTES_IN_OVEN)
  # 2022-05-10 edit: omitting return and just perform the calculation straightaway
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  # method to calculate preparation time in minutes
  # assuming each layer takes 2 minutes to prepare (defined in PREP_TIME_PER_LAYER)
  # 2022-05-10 edit: omitting return and just perform the calculation straightaway
  def preparation_time_in_minutes(layers)
    PREP_TIME_PER_LAYER * layers
  end

  # method to calculate total working time in minutes
  # combining results from prep time and actual minutes in oven
  # 2022-05-10 edit: omitting return and just perform the calculation straightaway
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    prep_time = preparation_time_in_minutes(number_of_layers)
    prep_time + actual_minutes_in_oven
  end
end

# Printing output of implementation
# based on exercise details
puts "the expected oven time in minutes:"
puts Lasagna::EXPECTED_MINUTES_IN_OVEN

lasagna = Lasagna.new
puts "remaining oven time in minutes (actual minutes is 30):"
puts lasagna.remaining_minutes_in_oven(30)
puts "preparation time in minutes for 2 layers:"
puts lasagna.preparation_time_in_minutes(2)
puts "total working time in minutes (for 3 layers and already in oven for 20 minutes):"
puts lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)