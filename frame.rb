class Frame

  def self.generate_pins
    @frame = []
    @pins = Array.new 2
    10.times do |index|
      @pins[0] = Random.new.rand(0..10)
      result = 10 - @pins[0]
      range = 0.."#{result}".to_i
      @pins[1] = Random.new.rand(range)
      @frame[index] = @pins.inspect
    end
  end

  def self.print_values
    @frame.each_index do |index|
      puts "position: #{index}, value: #{@frame[index]}"
    end
  end
end


Frame.generate_pins
Frame.print_values



