class Github::OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update]

  def show
    @repositories = @organization.repositories
  end

  def edit
  end

  def update
    @organization.assign_attributes(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_organization
    @organization = Github::Organization.find(params[:id])
  end

  def organization_params
    params.require(:github_organization).permit(:name)
  end
end
