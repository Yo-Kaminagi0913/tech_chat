class AnswersController < ApplicationController

  # def new
  #   @answer = Answer.new
  # end

  def create
    answer = Answer.create(answer_params)
    redirect_to "/questions/#{answer.question.id}"
  end

  private
  def answer_params
    params.require(:answer).permit(:name, :content).merge(question_id: params[:question_id])
  end
end
