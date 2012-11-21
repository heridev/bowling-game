class Roll
  class << self
    #the seeeder method to create value in each roll
    def generate_pins
      @pins = Array.new 2
      @pins[0] = Random.new.rand(0..10)
      result = 10 - @pins[0]
      #we set the range between the result and zero because
      #in the one frame the player only can break down 10 pins
      range = 0.."#{result}".to_i
      #we create a random values for the second roll
      @pins[1] = Random.new.rand(range)
      #we put in the array our values generated
      @pins
    end
  end
end

