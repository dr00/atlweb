require 'spec_helper'

describe "job_activities/show.html.erb" do
  before(:each) do
    @job_activity = assign(:job_activity, stub_model(JobActivity))
  end

  it "renders attributes in <p>" do
    render
  end
end
