class AddUserToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :user, foreign_key: true
  end
end
