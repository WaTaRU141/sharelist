class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def favorites
    @user = User.find(params[:id])
  end

  def update
  redirect_to mypage_profile_path
  flash[:success] = "プロフィールを更新しました"
  end

  def create
    # file =params[:user][:image]
    # if !file.nil?
    #   file_name = file.original_filename
    #   File.open()
  end

  def request_users
    @user = User.find(params[:id])
  end

  def holders
    @user = User.find(params[:id])
  end



  def edit
  end

  # def show
  # end
end
