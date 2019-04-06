class Patient

@@all = []
attr_accessor :name

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
end

def appointments
  Appointment.all.select { |appointment| appointment.patient == self}
end

def doctors
  Appointments.all.map do |appointment|
  appointment.doctor
  end
end
