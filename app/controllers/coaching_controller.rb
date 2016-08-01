class CoachingController < ApplicationController
  # def answer
  #   @question = params[:query]
  # end

  def ask
    @pergunta = params[:pergunta]
  end

  def answer
    @question = params[:query]
    if @question.downcase == "i am going to work right now!"
      @reply = 'GOOD JOB!'
    elsif @question.end_with?("?")
      @reply = "Silly question, get dressed and go to work!"
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced()
    answer = coach_answer(@question)
    if answer != ""
      if @question.upcase == @question
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end
end
