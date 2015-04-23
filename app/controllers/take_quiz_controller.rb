class TakeQuizController < ApplicationController
  def take
  	@quiz = Test.find(params[:quiz_id])
  	@questions = @quiz.questions
  end
end
