class HomeController < ApplicationController
  def index
    # @organizations = Github::Organization.all
    @github_user = Github::User.find_authenticated
  end
end
