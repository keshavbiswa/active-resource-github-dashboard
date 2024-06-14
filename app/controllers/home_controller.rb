class HomeController < ApplicationController
  def index
    @organizations = Github::Organization.all
    raise "Error"
  end
end
