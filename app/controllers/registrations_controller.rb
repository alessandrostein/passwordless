# frozen_string_literal: true

class RegistrationsController < ApplicationController
  include Passwordless::ControllerHelpers

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.skip_password_validation = true
    if @user.save
      sign_in @user
      redirect_to '/donor'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
