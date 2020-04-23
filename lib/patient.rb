class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appt_instance| appt_instance.patient == self}
    end

    def doctors
        appointments.map {|appt_instance| appt_instance.doctor}
    end
end