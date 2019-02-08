class ConnectesController < ApplicationController

  before_action :authenticate_user, only: [:connected]

  def connected
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
