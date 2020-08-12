# frozen_string_literal: true

class DonorsController < ApplicationController
  include Passwordless::ControllerHelpers

  before_action :require_user!
  helper_method :current_user

  private

  def current_user
    @current_user ||= authenticate_by_session(User)
  end

  def require_user!
    return if current_user

    redirect_to '/donors/sign_in', flash: { error: 'You are not worthy!' }
  end
end
