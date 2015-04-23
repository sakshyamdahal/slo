class TakeQuizController < ApplicationController
  def take
  	@quiz = Test.find(params[:quiz_id])
  	@questions = @quiz.questions.shuffle
  	@user = current_user
  end

  def evaluate
  	@quiz = Test.find(params[:quiz_id])
  	@score = 0
  	@totalScore = @quiz.questions.count

  	@quiz.questions.each do |q| 
  		@optionChoosen = Option.find(params[q.id.to_s].to_i)
  		if @optionChoosen.correct
  			@score += 1
  		end
  	end

  	score = Score.new
  	score.user_id = current_user.id
  	score.test_id = @quiz.id
  	score.percentage = (@score.to_f/@totalScore.to_f) * 100
  	score.save
  end
end
