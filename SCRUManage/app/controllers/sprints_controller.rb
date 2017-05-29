class SprintsController < ApplicationController
before_filter :authenticate_user!

  def index
    @sprints = Sprint.all
    @sprint = Sprint.find(params[:id])
  end

  def new
    @sprint = Sprint.new
    @sprints = Sprint.all
  end

  def edit
    @sprint = Sprint.find(params[:id])
  end

  def create
    @sprint = Sprint.create(sprint_params)
    if @sprint.save
      redirect_to '/pages/main'
    else
      render "new"
    end
  end

  def update
    @sprint = Sprint.find(params[:id])
    if @sprint.update(sprint_params)
      redirect_to '/pages/main'
       flash[:success] = "Edytowano pomyślnie."
    else
      render 'edit'
    end
  end

  def destroy
    Sprint.find(params[:id]).destroy
    flash[:success] = "Sprint usunięty"
    redirect_to '/pages/main'
  end

  private

  def sprint_params
    params.require(:sprint).permit(:sprintName, :sprintDescription, :StartDate, :EndDate, :project_id)
  end
end
