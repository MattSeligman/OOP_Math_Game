class Question

  attr_reader :player
  
  def initialize(player)
    @player = player
    @question = Array.new(2) { rand(1..20) }
    @answer = @question.sum
  end  

  def answer
    puts self.to_s # puts "Player - What is #{@question.first} + #{@question.last}?"
    print "> "
    player_answer = gets.chomp.to_i
    correct = @answer.eql? player_answer

    if correct
      puts "Correct #{@player.to_s}, it is #{@answer}"
    else 
      puts "Incorrect #{@player.to_s}, it's #{@answer}"
      @player.lost_life
      puts "#{@player.to_s} has lost 1 life! #{@player.lives}/3"
    end
    
  end

  def to_s
    "#{@player.to_s}: What is #{@question.first} + #{@question.last}?"
  end

end