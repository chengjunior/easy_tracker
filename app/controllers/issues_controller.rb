class IssuesController < InheritedResources::Base

  belongs_to :project
  # def index
  #   # @projects = Project.all
  #   # @project = Project.find(params[:project_id])
  #   @sprint = @project.sprints.last
  # end
end
