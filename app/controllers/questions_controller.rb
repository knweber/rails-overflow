class QuestionsController < ApplicationController
  include QuestionsHelper

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to '/'
    else
      render 'questions/new'
    end
  end
end
