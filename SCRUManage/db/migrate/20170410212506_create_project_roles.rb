class CreateProjectRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :project_roles do |t|
      t.string :projRoleName

      t.timestamps
    end
  end
end
