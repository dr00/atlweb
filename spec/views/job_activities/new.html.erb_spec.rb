require 'spec_helper'

describe "job_activities/new.html.erb" do
  before(:each) do
    assign(:job_activity, stub_model(JobActivity).as_new_record)
  end

  it "renders new job_activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_activities_path, :method => "post" do
    end
  end
end
