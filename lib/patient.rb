class Patient

@@all = []
attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(sel, doctor, date)
end



end
