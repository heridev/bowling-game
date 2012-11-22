require_relative 'roll'
class Frame

  def initialize count
    @count = count
  end

  def generate_frames
    @frames = []
    @count.times do |index|
      @frames[index] = Roll.generate_pins
      if index == @count-1
        result = @frames[index]
        if (result[0] + result[1]) == 10
          @frames[index] = [result[0], result[1],Random.new.rand(1..10)]
        end
      end
    end
  end


  #method used to print the values generated in our seeder method
  def print_values
    @frames.each_index do |index|
      puts "Roll ##{index}, pins: #{@frames[index]}"
    end
  end

  #def apply_rules
    #if lastelement 
      #LastFrame.something
    #end
  #end

  def score
    total_score = []
    @frames.each_index do |index|
      valid_strike = false
      valid_spare = false
      roll_score = @frames[index]
      #Evaluate strike rule
      if roll_score[0] == 10 && index != @frames.length-1
        result_score_next = @frames[index + 1]
        total_score << (result_score_next[0] + result_score_next[1]) + 10
        valid_strike = true
      end

      #Eval spare rule
      if (roll_score[0] + roll_score[1]) == 10 && roll_score[0] != 10 && index != @frames.length-1
        result_score_next = @frames[index + 1]
        total_score << result_score_next[0] + 10
        valid_spare = true
      end

      #Eval the last element in array with 3 elements in array
      if (roll_score[0] + roll_score[1]) == 10 && index == @frames.length-1
        total_score << roll_score[0] + roll_score[1] + roll_score[2]
        valid_spare = true
      end

      #eval in case that any case appear just add the two elements
      if valid_spare == false && valid_strike == false
        total_score << roll_score[0] + roll_score[1]
      end

    end
      total_score
    # we spec an array formated like:
    #[5, 10, 20 , 35, 58]
  end

end


