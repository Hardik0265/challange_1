class Github::ConnectorsController < ApplicationController

  def index
    if session[:token]
      redirect_to github_repositories_path
    end
  end

  def create
    client = Octokit::Client.new access_token: permit_params[:token]
    # Storing token in session for future use.
    if client.present?
      session[:token] = permit_params[:token]
      redirect_to github_repositories_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def permit_params
    params.permit :token
  end
end
