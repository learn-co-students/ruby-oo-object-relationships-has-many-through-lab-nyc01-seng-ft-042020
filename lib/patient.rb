class Patient
    attr_accessor :name
    @@all =[]

    def initialize(name)
        @name = name

        Patient.all<<self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select do |i|
            i.patient==self
        end
    end

    def doctors
        appointments.map do |i|
            i.doctor
        end
    end
end