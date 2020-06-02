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

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)

  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointment.all.collect do |patient|
      patient.doctor == self
    end
  end

  def patients
    #binding.pry
    Appointment.all.collect do |appointment|
      appointment.patients
    end
  end

end
