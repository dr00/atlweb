class JobsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy, :update]
  before_filter :authorized_user, :only => :destroy

  def index
    @jobs = Job.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end
  end

  def show
    @job = Job.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job }
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = current_user.jobs.build(params[:job])

      if @job.save
        flash[:success] = "Job created!"
        redirect_to root_path
      else
        render 'pages/home'
      end
  end

  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to(@job, :notice => 'Job was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    redirect_back_or root_path
  end
  
  private
  
  def authroized_user
    @job = current_user.jobs.find_by_id(params[:id])
    redirect_to root_path if @jobs.nil?
  end
end
