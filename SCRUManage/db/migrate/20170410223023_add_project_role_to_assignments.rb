class AddProjectRoleToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :projectRole, foreign_key: true
  end
end
