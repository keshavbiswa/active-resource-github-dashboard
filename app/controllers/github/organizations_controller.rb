class Github::OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show]

  def show
    @repositories = @organization.repositories
  end

  private

  def set_organization
    @organization = Github::Organization.find(params[:id])
  end

  def organization_params
    params.require(:github_organization).permit(:name)
  end
end
