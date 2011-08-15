class JobActivitiesController < ApplicationController
  # GET /job_activities
  # GET /job_activities.xml
  def index
    @job_activities = JobActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_activities }
    end
  end

  # GET /job_activities/1
  # GET /job_activities/1.xml
  def show
    @job_activity = JobActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_activity }
    end
  end

  # GET /job_activities/new
  # GET /job_activities/new.xml
  def new
    @job_activity = JobActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_activity }
    end
  end

  # GET /job_activities/1/edit
  def edit
    @job_activity = JobActivity.find(params[:id])
  end

  # POST /job_activities
  # POST /job_activities.xml
  def create
    @job_activity = JobActivity.new(params[:job_activity])

    respond_to do |format|
      if @job_activity.save
        format.html { redirect_to(@job_activity, :notice => 'Job activity was successfully created.') }
        format.xml  { render :xml => @job_activity, :status => :created, :location => @job_activity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_activities/1
  # PUT /job_activities/1.xml
  def update
    @job_activity = JobActivity.find(params[:id])

    respond_to do |format|
      if @job_activity.update_attributes(params[:job_activity])
        format.html { redirect_to(@job_activity, :notice => 'Job activity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_activities/1
  # DELETE /job_activities/1.xml
  def destroy
    @job_activity = JobActivity.find(params[:id])
    @job_activity.destroy

    respond_to do |format|
      format.html { redirect_to(job_activities_url) }
      format.xml  { head :ok }
    end
  end
end
