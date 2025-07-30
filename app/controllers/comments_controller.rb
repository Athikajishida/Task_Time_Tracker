class CommentsController < ApplicationController
  before_action :set_task

  def create
    @comment = @task.comments.build(comment_params)
    if @comment.save
      redirect_to project_tasks_path(@task.project), notice: "Comment added."
    else
      redirect_to project_tasks_path(@task.project), alert: "Failed to add comment."
    end
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
