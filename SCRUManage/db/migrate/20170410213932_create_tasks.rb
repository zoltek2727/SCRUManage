class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :taskName
      t.datetime :taskStart
      t.datetime :taskEnd
      t.text :taskDescription
      t.time :taskEstTime

      t.timestamps
    end
  end
end
