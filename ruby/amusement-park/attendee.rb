class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  # getter method for height
  def height
    @height
  end

  # getter method for pass_id
  def pass_id
    @pass_id
  end

  # method to issue pass_id
  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  # method to revoke pass_id
  def revoke_pass!
    @pass_id = nil
  end
end

# Test messages
puts Attendee.new(106)
puts Attendee.new(106).height

# Step 4
attendee = Attendee.new(106)
attendee.issue_pass!(42)
puts attendee.pass_id

# Step 5
attendee = Attendee.new(106)
attendee.issue_pass!(42)
attendee.revoke_pass!
puts attendee.pass_id