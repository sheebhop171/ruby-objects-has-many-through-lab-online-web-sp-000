require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
  #  binding.pry
    Appointment.new(doctor, self, date)

  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    #binding.pry
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end
  
end
