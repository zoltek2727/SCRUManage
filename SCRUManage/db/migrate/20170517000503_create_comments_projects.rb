class CreateCommentsProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :comments_projects do |t|
      t.text :content_comProj
      t.datetime :date_comProj

      t.timestamps
    end
  end
end
