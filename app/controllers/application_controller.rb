# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Passwordless::ControllerHelpers

  helper_method :current_donor

  private

  def current_donor
    @current_donor ||= authenticate_by_session(Donor)
  end

  def require_donor!
    return if current_donor

    redirect_to '/donors/sign_in', flash: { error: 'You are not worthy!' }
  end
end
