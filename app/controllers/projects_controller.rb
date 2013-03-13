class ProjectsController < InheritedResources::Base

  def new
    render layout: 'simple'
  end

  def edit
    render layout: 'simple'
  end

  def show
    @projects = Project.all
    @project = Project.find(params[:id])
    @sprint = @project.sprints.last
  end
end