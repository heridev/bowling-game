class LastFrame

  myarray = [0,10,25,25]
  total_score =  myarray.reduce(0) {|memo, value|  memo + value }
  puts total_score

end
