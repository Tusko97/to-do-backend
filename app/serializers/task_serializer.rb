class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed, :project_id
  belongs_to :project
end
