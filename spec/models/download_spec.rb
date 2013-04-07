require 'spec_helper'

describe Download do
  it { should have_attached_file :filename }
  it { should allow_mass_assignment_of :single_use }

  it { should validate_attachment_presence :filename }
  it { should validate_presence_of :single_use }
end
