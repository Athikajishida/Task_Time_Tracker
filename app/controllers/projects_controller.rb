class ProjectsController < ApplicationController
  before_action :set_project, only: [:destroy]

  def index
    @projects = Project.all.order(created_at: :desc)
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: "Project created successfully."
    else
      @projects = Project.all
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted successfully."
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
