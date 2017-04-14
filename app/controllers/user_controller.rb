class UserController < ApplicationController

before_action :setting_user

  #Makimg user instance
  def show
  end

  # Edit page
  def edit
  end

  # Update user information
  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "編集成功しました"
    else
      flash.now[:alert] = "編集は失敗しました"
      render :edit
    end
  end

private

  # Setting strong parameter
  def user_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana)
  end

  # Helper method for common instances
  def setting_user
    @user = User.find(params[:id])
  end

end
