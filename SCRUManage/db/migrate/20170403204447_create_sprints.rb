class CreateSprints < ActiveRecord::Migration[5.0]
  def change
    create_table :sprints do |t|
      t.string :sprintName
      t.text :sprintDescription
      t.datetime :StartDate
      t.datetime :EndDate

      t.timestamps
    end
  end
end
