require 'spec_helper'

describe ResultsController do
  describe "GET Index" do
    it "gets the index view" do
      get "index"
      response.status.should be 200
    end

    it "gets the correct index view template" do
      get "index"
      response.should render_template("results/index")
    end
  end
end
