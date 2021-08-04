class Github::RepositoriesController < ApplicationController
  before_action :authenticate

  def index
    @repos = @client.repos({}, query: { sort: 'asc' })
  end

  def show
    @repository_name = @client.repository(permit_params[:id].to_i).name
    @authors = @client.contributors_stats(permit_params[:id].to_i)
    render json: { html: render_to_string(partial: 'show') }
  end

  private

  def permit_params
    params.permit :id
  end
end
