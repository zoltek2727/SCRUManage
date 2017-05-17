class AssignmentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @assignment = Assignment.new
    @assignments = Assignment.all
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def create
    @assignment = Assignment.create(assignment_params)
    if @assignment.save
      redirect_to '/pages/main'
    else
      render "new"
    end
  end

  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to '/pages/main'
       flash[:success] = "Edytowano pomyślnie."
    else
      render 'edit'
    end
  end

  def destroy
    Assignment.find(params[:id]).destroy
    flash[:success] = "Przydział usunięty"
    redirect_to '/pages/main'
  end

  private

  def assignment_params
    params.require(:assignment).permit(:user_id, :projectRole_id, :project_id)
  end
end
