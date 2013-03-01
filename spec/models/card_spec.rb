require 'spec_helper'

describe Card do

  it { should have_field(:name).of_type(String) }
  it { should have_field(:description).of_type(String) }
  it { should have_field(:estimated_time).of_type(Integer) }
  it { should have_field(:spent_time).of_type(Integer) }
  it { should have_field(:status).of_type(Integer) }

  it { should belong_to(:issue) }
  it { should belong_to(:sprint) }
end
