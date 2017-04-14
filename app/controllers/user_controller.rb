class UserController < ApplicationController

  #Makimg user instance
  def show
    @user = User.find(params[:id])
  end

end
