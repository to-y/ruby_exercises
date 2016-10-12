require './players'
require './qa'

print 'Player 1 name: '
@name = gets.chomp
p1 = Player.new(@name)

print 'Player 2 name: '
@name = gets.chomp
p2 = Player.new(@name)


question = QA_generator.new
turn = 0
game_over = false

while !game_over do
  puts '------------NEW TURN------------'

  if turn == 0
    current_player = p1
  else
    current_player = p2
  end

  cp_name = current_player.name.capitalize
  puts ("#{cp_name}: #{question.question_generator}")
  @user_answer = gets.chomp.to_i

  if question.answer_checker(@user_answer)
    puts "#{cp_name}: YEEEEEeeeeeęes!"
    current_player.score_point
    puts "P1: #{p1.points} Points vs P2: #{p2.points} Points"
  else
    puts "#{cp_name}: NOOOOOooooooooõ"
    current_player.wrong_answer
    puts "P1: #{p1.lives} Lives Left vs P2: #{p2.lives} Lives Left"
  end

  if current_player != p1
    turn = 0
  else
    turn += 1
  end

  if current_player.lives == 0
    game_over = true
    if current_player != p1
      puts "#{p2.name.capitalize} wins with a score of #{p2.points}"
    else
      puts "#{cp_name} wins with a score of #{p1.points}"
    end
      puts '------------GAME OVER-------------'
  end
end



