class TopController < ApplicationController

  def index
    @question = Question.new
    @questions = current_user.questions
  end

end
