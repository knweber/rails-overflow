class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to "/questions/#{@answer.question_id}"
    else
      render 'answers/new'
    end
  end

end
