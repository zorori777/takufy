class AnswersController < ApplicationController

  # before_action :setting_question

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end

  def create
    @answer = current_user.answers.new(making_answer)
      if @answer.save
        redirect_to root_path, notice: "解答作成されました"
      else
        @question = @answer.question
        flash.now[:alert] = "解答作成できませんでした"
        render :new
      end

  end

# Settiong strong parameters
private
  def making_answer
    params.require(:answer).permit(:text, :question_id)
  end

end
