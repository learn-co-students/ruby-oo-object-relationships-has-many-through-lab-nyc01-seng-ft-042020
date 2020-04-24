class Doctor
attr_accessor :name
@@all = []

    def initialize(name)
        @name = name

        Doctor.all<<self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |i|
            i.doctor==self
        end
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)

    end

    def patients
        appointments.map do |i|
            i.patient
        end
    end

end