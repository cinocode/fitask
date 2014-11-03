class TasksController < ApplicationController
  def index
    @tasks = Task.where(['completion_ts is null'])
  end

  def create
    @task = Task.new(:text => params[:new_task_text])
    if @task.save
      redirect_to tasks_path
    end
  end
end
