class ProjectsController < InheritedResources::Base
  layout false, only: [:new, :edit]

  def create
    create! do |format|
      format.html { redirect_to projects_path }
    end
  end

  def update
    update! do |format|
      format.html { redirect_to projects_path }
    end
  end

  def show
    @sprint   = resource.sprints.last
    show!
  end
end