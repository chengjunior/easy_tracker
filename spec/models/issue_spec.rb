require 'spec_helper'

describe Issue do
  
  it { should have_field(:title).of_type(String) }
  it { should have_field(:description).of_type(String) }
  it { should have_field(:status).of_type(Integer) }

  it { should belong_to(:project) }
  it { should have_many(:cards) }

end
