class ProjectsController < ApplicationController
  def index
    @projects = Project.all
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
      redirect_to '/pages/main'
    else
      render "new"
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
