class Appointment
    @@all = []

    attr_accessor :date, :patient, :doctor


    def initialiaze(date=nil, patient=nil, doctor=nil)
        @date = date
        @patient = patient
        @doctor = doctor
        Appointment.all << self
    end

    def self.all
        @@all
    end
end