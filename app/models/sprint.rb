class Sprint
  include Mongoid::Document

  field :name, type: String
  field :starts_at, type: Date
  field :ends_at, type: Date

  belongs_to :project
  has_many :cards
end
