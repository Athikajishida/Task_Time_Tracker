class TasksController < ApplicationController
  before_action :set_project
  before_action :set_task, only: [:update, :destroy]

  def index
    @tasks = @project.tasks.includes(:comments, :timetrackers)
    @task = Task.new
  end

  def create
    @task = @project.tasks.build(task_params)
    if @task.save
      redirect_to project_tasks_path(@project), notice: "Task created successfully."
    else
      redirect_to project_tasks_path(@project), alert: "Failed to create task."
    end
  end

  def update
    if @task.update(status: "completed")
      redirect_to project_tasks_path(@project), notice: "Task marked as complete."
    else
      redirect_to project_tasks_path(@project), alert: "Failed to update task."
    end
  end

  def destroy
    @task.destroy
    redirect_to project_tasks_path(@project), notice: "Task deleted."
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_task
    @task = @project.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title)
  end
end
