class ProjectsController < TrackerController
  
  def dashboard
    @sprint = @project.sprints.last
  end
end