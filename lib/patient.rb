class Patient
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
        Appointment.all.select {|appointments| appointments.patient == self}
    end 
    def doctors 
        appointments.map {|appointments| appointments.doctor}
    end 
end 