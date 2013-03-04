class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @projects = Project.all
  end
end
