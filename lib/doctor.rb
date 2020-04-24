require_relative = 'appointment'
class Doctor
  @@all =[]
  attr_accessor :name

  def initialize(name)
    @name = name
    Doctor.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
   Appointment.all.collect{|appointment| appointment.doctor == self ? appointment.patient : nil}
  end

  def appointments
    Appointment.all.collect{|appointment| appointment.doctor == self ? appointment : nil}
  end

end
