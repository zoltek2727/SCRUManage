class AddProjectToCommentsProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments_projects, :project, foreign_key: true
  end
end
