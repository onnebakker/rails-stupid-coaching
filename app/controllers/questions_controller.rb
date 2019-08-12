class QuestionsController < ApplicationController
  def ask
    @ask = "Hello There"
  end

  def answer
    @answer = params[:question]
    if @answer == "I am going to work right now!"
      @answer = "hi"
    elsif @answer.end_with? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer= "I don't care, get dressed and go to work!"
    end
  end
end
