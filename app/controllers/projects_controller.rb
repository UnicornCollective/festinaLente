class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :sign_in


  def index
    @projects = Project.where(start: params[:start]..params[:end])
  end

  def show
  end

  def new
    @project = Project.create(project_params)
    @project.save
  end

  def edit
  end

  def create
    @project = Project.create(project_params)
    @project.save
  end

  def update
    @project.update(project_params)
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end


    def project_params 
        params.require(:project).permit(:name, :address1, :address2, :city, :state, :zip, :state, :square_footage, :status, :description)
    end

   def sign_in
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end
end


