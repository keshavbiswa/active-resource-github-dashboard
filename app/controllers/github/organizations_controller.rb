class Github::OrganizationsController < ApplicationController
  def show
    @organization = Github::Organization.find(params[:id])
  end
end
