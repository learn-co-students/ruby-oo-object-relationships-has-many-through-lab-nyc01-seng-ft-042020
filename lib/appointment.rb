# **The `Appointment` model:**

# - The `Appointment` class needs a class variable `@@all` that begins as an empty array.
# - The `Appointment` class needs a class method `.all` that lists each `Appointment`
#   in the class variable.
# - An `Appointment` should be initialized with a date (as a string, like `"Monday, August 1st"`), a patient, and a doctor. The `Appointment` should be saved in the
#   `@@all` array.

# ```ruby
# ferris = Patient.new("Ferris Bueller")
# doogie = Doctor.new("Doogie Howser")

# new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)
# ```

class Appointment 

  attr_accessor :date, :patient, :doctor #why?

  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor
    @@all << self 
  end 

  def self.all
    @@all
  end 

end 