require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
  #  binding.pry
    Appointment.new(date, self, doctor)

  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    binding.pry
    appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end
end
