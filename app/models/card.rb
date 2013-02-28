class Card
  include Mongoid::Document

  field :name, type: String
  field :description, type: String
  field :estimated_time, type: Integer
  field :spent_time, type: Integer
  field :status, type: Integer

  belongs_to :issue
  belongs_to :sprint
end
