class HomeController < ApplicationController
  def index
    @organizations = Github::Organization.all
  end
end
