class TasksController < ApplicationController
  def index
    @tasks = Task.where(['completion_ts is null'])
  end

  def create
    @task = Task.new(:text => params[:new_task_text])
    if @task.valid? && @task.save
      redirect_to tasks_path
    else
      @errors = @task.errors.full_messages
      index()
      render 'index'
    end
  end
  
  def complete
    @task = Task.find(params[:id])
    @task.completion_ts = Time.now
    if @task.valid? && @task.save
    else
      @errors = @task.errors.full_messages
    end
    index()
    render'index'
    rescue ActiveRecord::RecordNotFound
    @errors = ["Task with id #{params[:id]} is not defined."]
    index()
    render'index'
  end
end
