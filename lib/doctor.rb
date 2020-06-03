class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.map do |appointment|
    appointment.doctor == self
    end
  end

  def patients
    #binding.pry
    Appointment.all.select do |patient|
      patient.doctor == self
    end
  end

end
