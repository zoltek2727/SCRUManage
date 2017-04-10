class AddTaskStateToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :taskState, foreign_key: true
  end
end
