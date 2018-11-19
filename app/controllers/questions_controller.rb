class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    else
      @answer = @question.include?('?') ? "Silly question, go work" : "I don't care, go work"
    end
  end
end
