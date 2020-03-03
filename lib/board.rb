class Board 
  attr_accessor :cells 
  
  @cells = []
  
  def initialize(cells = nil)
    @cells = cells || Array.new(9, " ")
  end
  
  def reset! 
    self.cells = Array.new(9, " ")
  end 
  
  def display  
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(user_input)
    self.cells[user_input.to_i-1]
  end
  
   def full?
   self.cells.all? {|cell| cell == "X" || cell == "O"}
  end
  
  def turn_count
  turn = 0
  self.cells.each do |cell|
    if cell == "X" || cell == "O"
      turn += 1
    end
  end
  return turn
end

def taken?(user_input)
  position(user_input) == "X" || position(user_input) == "O"
end

end 