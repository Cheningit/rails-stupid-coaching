class QuestionsController < ApplicationController
  def ask
    # how do I connect this to views ? a new answer.html file?
    if params[:question]
      # read questions from param
      @question = params[:question]
      if @question == "I am going to work"
        @answer = "Great!"
      elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      # compute an instance variable @answer for view to display
    end
  end
end
