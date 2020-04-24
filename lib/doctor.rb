class Doctor
    @@all []

    def self.all
        @@all
    end

    def initialize(name)
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(patient,date)
    end

    def appointments
        Appointment.all.each do |e|
            e.doctor == self
        end
    end

    def patients
        Appointment.all.each do |e|
            e.
    end
end