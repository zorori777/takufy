class GroupController < ApplicationController

  before_action :setting_group

  def show
  end

  def edit
  end

  def update
    if @group.update(update_params)
      redirect_to group_path(@group), notice: "編集が成功しました"
    else
      flash.now[:alert] = "編集が失敗しました"
      render  :edit
    end
  end

private

  #Making common instance
  def setting_group
    @group = Group.find(params[:id])
  end

  # Setting strong parameter
  def update_params
    params.require(:group).permit(:key, :detail)
  end

end
