class CreateSprintStates < ActiveRecord::Migration[5.0]
  def change
    create_table :sprint_states do |t|
      t.string :sprintStateName

      t.timestamps
    end
  end
end
