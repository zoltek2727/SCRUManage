class AddUserToCommentsProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments_projects, :user, foreign_key: true
  end
end
