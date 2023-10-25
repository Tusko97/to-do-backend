class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :tasks
  belongs_to :user
end
