class CargoTruck
  attr_accessor :plate_number, :branding, :odometer, :driver
  def initialize(plate_number, branding)
    @plate_number = plate_number
    @branding = branding
    @odometer = 0
    @driver = nil
  end
  def summary
    "#{branding} Truck with #{plate_number} was driven by #{driver}"
  end
end
truck = CargoTruck.new('AMZ001', "Amazon")
puts truck.odometer
puts truck.driver
puts truck.driver = "Larry"
puts truck.summary
