class AnswersController < ApplicationController

  before_action :redirect_page, only: :new
  before_action :respond_answer, only: [:edit, :update]

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

  def edit
  end

  def update
    if @answer.update(update_params)
      redirect_to root_path, notice: "編集がしました"
    else
      flas.now[:alert] ="編集できませんでした"
      render :edit
    end
  end


# Settiong strong parameters
private
  def making_answer
    params.require(:answer).permit(:text, :question_id)
  end

# making heplet method
  def respond_answer
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

 #setting strong parameter
   def update_params
    params.require(:answer).permit(:text)
  end

  # Avoid answering same question again
  def redirect_page
    if Answer.exists?(question_id: params[:question_id], user_id: current_user.id)
      redirect_to :root
   end
  end

end
