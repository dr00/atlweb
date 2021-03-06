require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JobActivitiesController do

  # This should return the minimal set of attributes required to create a valid
  # JobActivity. As you add validations to JobActivity, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all job_activities as @job_activities" do
      job_activity = JobActivity.create! valid_attributes
      get :index
      assigns(:job_activities).should eq([job_activity])
    end
  end

  describe "GET show" do
    it "assigns the requested job_activity as @job_activity" do
      job_activity = JobActivity.create! valid_attributes
      get :show, :id => job_activity.id.to_s
      assigns(:job_activity).should eq(job_activity)
    end
  end

  describe "GET new" do
    it "assigns a new job_activity as @job_activity" do
      get :new
      assigns(:job_activity).should be_a_new(JobActivity)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_activity as @job_activity" do
      job_activity = JobActivity.create! valid_attributes
      get :edit, :id => job_activity.id.to_s
      assigns(:job_activity).should eq(job_activity)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JobActivity" do
        expect {
          post :create, :job_activity => valid_attributes
        }.to change(JobActivity, :count).by(1)
      end

      it "assigns a newly created job_activity as @job_activity" do
        post :create, :job_activity => valid_attributes
        assigns(:job_activity).should be_a(JobActivity)
        assigns(:job_activity).should be_persisted
      end

      it "redirects to the created job_activity" do
        post :create, :job_activity => valid_attributes
        response.should redirect_to(JobActivity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_activity as @job_activity" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobActivity.any_instance.stub(:save).and_return(false)
        post :create, :job_activity => {}
        assigns(:job_activity).should be_a_new(JobActivity)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobActivity.any_instance.stub(:save).and_return(false)
        post :create, :job_activity => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_activity" do
        job_activity = JobActivity.create! valid_attributes
        # Assuming there are no other job_activities in the database, this
        # specifies that the JobActivity created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JobActivity.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => job_activity.id, :job_activity => {'these' => 'params'}
      end

      it "assigns the requested job_activity as @job_activity" do
        job_activity = JobActivity.create! valid_attributes
        put :update, :id => job_activity.id, :job_activity => valid_attributes
        assigns(:job_activity).should eq(job_activity)
      end

      it "redirects to the job_activity" do
        job_activity = JobActivity.create! valid_attributes
        put :update, :id => job_activity.id, :job_activity => valid_attributes
        response.should redirect_to(job_activity)
      end
    end

    describe "with invalid params" do
      it "assigns the job_activity as @job_activity" do
        job_activity = JobActivity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobActivity.any_instance.stub(:save).and_return(false)
        put :update, :id => job_activity.id.to_s, :job_activity => {}
        assigns(:job_activity).should eq(job_activity)
      end

      it "re-renders the 'edit' template" do
        job_activity = JobActivity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobActivity.any_instance.stub(:save).and_return(false)
        put :update, :id => job_activity.id.to_s, :job_activity => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_activity" do
      job_activity = JobActivity.create! valid_attributes
      expect {
        delete :destroy, :id => job_activity.id.to_s
      }.to change(JobActivity, :count).by(-1)
    end

    it "redirects to the job_activities list" do
      job_activity = JobActivity.create! valid_attributes
      delete :destroy, :id => job_activity.id.to_s
      response.should redirect_to(job_activities_url)
    end
  end

end
