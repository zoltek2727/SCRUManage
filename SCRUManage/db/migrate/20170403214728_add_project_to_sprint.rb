class AddProjectToSprint < ActiveRecord::Migration[5.0]
  def change
    add_reference :sprints, :project, foreign_key: true
  end
end
