class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  # validates whether the attendee has a pass
  def has_pass?
    @pass_id != nil
  end
  # rubocop:enable Naming/PredicateName

  # validates whether the attendee fits a ride
  # the attendee's height must be taller or equal to the
  # ride's minimum height
  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  # validates whether the attendee has a pass and is fit to ride
  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end

# Step 1
puts Attendee.new(100).has_pass?

# Step 2
puts Attendee.new(140).fits_ride?(100)

# Step 3
attendee = Attendee.new(100)
attendee.issue_pass!(42)
attendee.allowed_to_ride?(120)