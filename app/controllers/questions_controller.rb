class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # params is a Hash ==> { "question" => "This is whatever the user is writing"}
    puts "WHAT'S THE QUESTION? #{params[:question]}"
    @answer = get_coach_answer(params[:question])
  end

  private
  
  def get_coach_answer(question)
    ## BELOW HERE is the Stupid Coach's logic:
    # 1. If the message is I am going to work, the coach will answer Great!
    # 2. If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # 3. Otherwise the coach will answer I don't care, get dressed and go to work!
    if question.downcase == 'i am going to work'
      "Great!"
    elsif question[-1] == '?'
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
