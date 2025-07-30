class TimetrackersController < ApplicationController
  before_action :set_task, only: [:create]
  before_action :set_timetracker, only: [:update]

  def create
    @timetracker = @task.timetrackers.build(start_time: Time.current)
    if @timetracker.save
      redirect_to project_tasks_path(@task.project), notice: "Timer started."
    else
      redirect_to project_tasks_path(@task.project), alert: "Could not start timer."
    end
  end

  def update
    if @timetracker.update(end_time: Time.current)
      redirect_to project_tasks_path(@timetracker.task.project), notice: "Timer stopped."
    else
      redirect_to project_tasks_path(@timetracker.task.project), alert: "Could not stop timer."
    end
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def set_timetracker
    @timetracker = Timetracker.find(params[:id])
  end
end
