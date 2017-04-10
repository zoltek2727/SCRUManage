class AddSprintStateToSprints < ActiveRecord::Migration[5.0]
  def change
    add_reference :sprints, :sprintState, foreign_key: true
  end
end
