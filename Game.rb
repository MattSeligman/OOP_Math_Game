require_relative 'Player' # contains the player which controls the name and lives
require_relative 'Question' # contains the question, answer and player's name.

class Game
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def end_game(winner)
    puts "#{winner.to_s} is the winner! #{winner.lives} / 3"
    puts "---- GAME OVER ----"
  end

  def start
    puts "Welcome to Add it!"

    while @player1.alive? && @player2.alive?

      # Create new Question
      question = Question.new(@player1)
      puts question.answer()

      puts "---- NEW TURN ----"
      if @player1.alive?
        
      # Create new Question
      question = Question.new(@player2)
      puts question.answer()

      puts "---- NEW TURN ----"
      end
    end

    winner = [@player1, @player2].find { |winner| winner.alive? }
    end_game(winner)
  end

end