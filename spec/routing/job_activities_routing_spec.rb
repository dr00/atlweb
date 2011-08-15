require "spec_helper"

describe JobActivitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/job_activities").should route_to("job_activities#index")
    end

    it "routes to #new" do
      get("/job_activities/new").should route_to("job_activities#new")
    end

    it "routes to #show" do
      get("/job_activities/1").should route_to("job_activities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_activities/1/edit").should route_to("job_activities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_activities").should route_to("job_activities#create")
    end

    it "routes to #update" do
      put("/job_activities/1").should route_to("job_activities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_activities/1").should route_to("job_activities#destroy", :id => "1")
    end

  end
end
