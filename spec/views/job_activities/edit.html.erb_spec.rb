require 'spec_helper'

describe "job_activities/edit.html.erb" do
  before(:each) do
    @job_activity = assign(:job_activity, stub_model(JobActivity))
  end

  it "renders the edit job_activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_activities_path(@job_activity), :method => "post" do
    end
  end
end
