class TasksController < ApplicationController
  def new
    @task = Task.new
    @tasks = Task.all
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to '/pages/main'
    else
      render "new"
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to '/pages/main'
    else
      render 'edit'
    end
  end

  private

  def task_params
    params.require(:task).permit(:taskName, :taskDescription, :sprint_id)
  end
end
