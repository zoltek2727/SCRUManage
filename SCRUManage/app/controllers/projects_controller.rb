class ProjectsController < ApplicationController
before_filter :authenticate_user!

  def index
    @projects = Project.all
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      Assignment.create(projectRole_id: 1, project_id: @project.id, user_id: current_user.id)
      redirect_to '/pages/main'
      flash[:success] = "Dodano pomyślnie."
    else
      render "new"
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to '/pages/main'
       flash[:success] = "Edytowano pomyślnie."
    else
      render 'edit'
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Projekt usunięty"
    redirect_to '/pages/main'
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :StartDate, :EndDate)
  end

end
