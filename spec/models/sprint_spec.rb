require 'spec_helper'

describe Sprint do
     
  it { should have_field(:name).of_type(String) }
  it { should have_field(:starts_at).of_type(Date) }
  it { should have_field(:ends_at).of_type(Date) }

  it { should belong_to(:project) }
  it { should have_many(:cards) }

end
