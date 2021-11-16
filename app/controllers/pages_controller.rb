class PagesController < ApplicationController
  def ask() end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == 'I am going to work right now!'
      answer = ''
    elsif your_message.include?('?')
      answer = 'Silly question, get dressed and go to work!'
    else
      answer = "I don't care, get dressed and go to work!"
    end

    answer
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    return 'Great!' if your_message.downcase == 'i am going to work right now!'

    answer = ''
    answer += 'I can feel your motivation! ' if your_message.upcase == your_message
    answer += coach_answer(your_message)

    answer
  end

  def answer
    @response = coach_answer_enhanced(params[:question])
  end
end
