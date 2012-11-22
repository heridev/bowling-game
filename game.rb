require_relative 'frame'

class Game

  #obtain all frames with his pins
  def generate_frames
    frame = Frame.new 5
    frame.generate_frames
    frame.print_values
    frame.score
  end

  #in this method we add all the pins calculated by score in frame class
  def calculate_score
    #example of array frames [5, 10, 20 , 35, 58]
    array_frames = generate_frames
    array_frames.reduce(0) {|memo, value|  memo + value }
  end

  #method used to print the total score
  def print_total_score
    calculate_score
  end
end


Game.new.print_total_score



