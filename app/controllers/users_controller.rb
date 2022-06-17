class UsersController < ApplicationController
  skip_before_action :login_required, only: %i(new create)
  # before_action :set_user,  only: %i(edit update)

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path, notice: "ユーザー情報を更新しました！"
    else
      render :edit, notice: "ユーザー情報の更新に失敗しました。"
    end
  end

  private

  # def set_user
  #   @user = User.find(current_user.id)
  # end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduce, :image, :image_cache)
  end

end
