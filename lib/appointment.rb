class Appointment

    attr_accessor :doctor, :patient, :date

    @@all = []

def self.all 
    @@all 
end

def initialize(date,patient,doctor)
    @date = date.to_s
    @patient = patient
    @doctor = doctor
    @@all << self
end 

def patient
@self.patient
end

end
