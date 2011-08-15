require 'spec_helper'

describe "job_activities/index.html.erb" do
  before(:each) do
    assign(:job_activities, [
      stub_model(JobActivity),
      stub_model(JobActivity)
    ])
  end

  it "renders a list of job_activities" do
    render
  end
end
