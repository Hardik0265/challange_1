class ApplicationController < ActionController::Base

  def authenticate
    if session[:token].present?
      @client = Octokit::Client.new access_token: session[:token]
    else
      redirect_to root_path
    end
  end
end
