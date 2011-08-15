class JobsController < ApplicationController
  before_filter :authenticate, :only => [:create, :index, :show]
  before_filter :authorized_user, :only => [:update, :destroy, :run]

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
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
      flash[:error] = "Job not created!"
      render 'pages/home'
    end
  end

  def update
    #@job = Job.find(params[:id])
		@job = current_user.jobs.find_by_id(params[:id])
    @job.update_attributes(params[:job])
    flash[:success] = "Job updated."
    redirect_back_or root_path
  end

  def destroy
    job = Job.find_by_id(params[:id])
		job.destroy
	  flash[:success] = "Job deleted."
    redirect_back_or root_path
  end

	def run
	  @job = current_user.jobs.find(params[:id])
		job_to_run = @job unless @job.nil?
		redirect_to resource_path
	end


  private
	def authorized_user
    @job = current_user.jobs.find_by_id(params[:id])
    flash[:success] = "Job nil"
    redirect_to root_path if @job.nil?
  end
end
