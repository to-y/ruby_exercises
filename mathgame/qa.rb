class QA_generator

  def initialize
    @first_number = Random.rand(21)
    @second_number = Random.rand(21)

  end

  def question_generator
    "What does #{@first_number} plus #{@second_number} equal?"
  end

  def answer_checker(user_answer)
    @answer = @first_number + @second_number
    if user_answer == @answer
      return true
    else
      return false
    end
  end

end
