class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.integer :projectId

      t.timestamps
    end
  end
end
