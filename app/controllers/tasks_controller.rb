class TasksController < ApplicationController
  def index
    @tasks = Task.where(['completion_ts is null'])
  end
end
