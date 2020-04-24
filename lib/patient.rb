require_relative = 'appointment'
class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
   @name = name
   Patient.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def doctors
   Appointment.all.collect{|appointment| appointment.patient == self ? appointment.date : nil}
  end

  def appointments
    Appointment.all.collect{|appointment| appointment.patient == self ? appointment : nil}
  end
end
