class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient)
    @date = date
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
