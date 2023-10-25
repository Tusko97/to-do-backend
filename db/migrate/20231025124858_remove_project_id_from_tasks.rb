class RemoveProjectIdFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :projectId, :integer
  end
end
