class Project
  include Mongoid::Document

  field :name, type: String
  field :description, type: String

  has_many :issues
  has_many :sprints
end
