class Doctor

    attr_accessor :name, :patient, :date

    @@all = []
    def initialize(name)
        @name = name
        Doctor.all << self
    end


    def self.all
        @@all
    end

    def new_appointment(patient, date)
    end

    def appointments
        Appointment.all.select {|me| me.doctor == self}
    end

    def patients
    end

end