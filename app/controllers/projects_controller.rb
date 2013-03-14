class ProjectsController < InheritedResources::Base
  
  def dashboard
    @sprint = resource.sprints.last
  end
end