class TrackerController < ActionController::Base
  protect_from_forgery

  before_filter :set_project

  def set_project
    @project = Project.find(params[:id])
  end
end
