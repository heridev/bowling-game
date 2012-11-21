require_relative 'frame'

class Game
  #in this method we add all the pins calculated by score in frame class
  def self.score
    total_score = 0
    frame = Frame.new 5
    frame.generate_frames
    frame.print_values
    array_frames = frame.score
    array_frames.each_index do |index|
      total_score = total_score + array_frames[index] 
    end

    total_score
  end
end

puts "Your total score are: #{Game.score}"
#require 'rspec'
#describe Game do
#end


