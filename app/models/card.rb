class Card
  include Mongoid::Document

  TODO = 1
  DOING = 2
  DONE = 3

  field :name, type: String
  field :description, type: String
  field :estimated_time, type: Integer
  field :spent_time, type: Integer
  field :status, type: Integer

  belongs_to :issue
  belongs_to :sprint
end
