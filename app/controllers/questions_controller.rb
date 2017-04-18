class QuestionsController < ApplicationController

  def create
    @question = current_user.questions.new(make_question)
     if  @question.save
          redirect_to root_path, notice: "作成が成功しました"
     else
          flash.now[:allow] = "作成に失敗しました"
          render "top/index"
     end
  end

private

#Setting strong parameter
  def make_question
    params.require(:question).permit(:text).merge(group_id: current_user.group_id)
  end

end
