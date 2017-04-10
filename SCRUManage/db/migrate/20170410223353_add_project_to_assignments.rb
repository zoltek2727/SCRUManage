class AddProjectToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :project, foreign_key: true
  end
end
