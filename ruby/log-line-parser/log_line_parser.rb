class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[[[:upper:]]+\]: /, '').strip
  end

  def log_level
    @line.scan(/[[:upper:]]+/)[0].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

# Test messages
puts LogLineParser.new('[ERROR]: Invalid operation').message
puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
puts LogLineParser.new('[ERROR]: Invalid operation').log_level
puts LogLineParser.new('[INFO]: Operation completed').reformat
