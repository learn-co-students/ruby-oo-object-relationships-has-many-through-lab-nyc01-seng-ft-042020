class Doctor

    attr_accessor :name, :appointment, :doctor, :patient
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        Appointment.new(date,patient, self)
    end

    def appointments
        Appointment.all.each do |e|
            e.doctor == self
        end
    end

    def patients
        Appointment.collect do |e|
            e.patient
        end.
    end
end