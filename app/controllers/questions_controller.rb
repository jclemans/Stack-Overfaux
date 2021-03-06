class QuestionsController < ApplicationController
  before_filter :authorize, only: [:new, :create]
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @question = Question.find(params[:id])
  end

private

  def question_params
    params.require(:question).permit(:post, :user_id)
  end

end
