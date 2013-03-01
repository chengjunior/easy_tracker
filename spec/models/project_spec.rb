require 'spec_helper'

describe Project do
    
  it { should have_field(:name).of_type(String) }
  it { should have_field(:description).of_type(String) }

  it { should have_many(:issues) }
  it { should have_many(:sprints) }

end
