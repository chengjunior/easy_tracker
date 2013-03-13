class Issue
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  field :status, type: Integer

  belongs_to :project
  has_many :cards

  def new_cards
    cards.where(status: nil)
  end
end
