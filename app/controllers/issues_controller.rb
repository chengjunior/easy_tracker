class IssuesController < InheritedResources::Base
  belongs_to :project


  def index
    puts '='*60
    puts params
    resource
  end
end
