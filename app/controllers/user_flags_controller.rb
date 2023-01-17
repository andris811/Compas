class UserFlagsController < ApplicationController

  def new
    @user_flag = UserFlag.new
  end

  def create
    @user_flag = UserFlag.new
    @user_flag.save
    redirect_to pages_profile_path(@user)
  end
end


