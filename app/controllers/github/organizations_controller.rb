class Github::OrganizationsController < ApplicationController
  def show
    @organization = Github::Organization.find(params[:id])
    @repositories = @organization.repositories
  end
end
