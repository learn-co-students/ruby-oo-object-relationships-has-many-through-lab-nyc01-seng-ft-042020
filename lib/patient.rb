require 'pry'

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(ddoctor, date)
        Appointment.new(doctor, self, date)
    end

    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end

    def doctors
        appointments.collect { |appointment| appointment.doctor }
    end

end
