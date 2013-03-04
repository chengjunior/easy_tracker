class Sprint
  include Mongoid::Document

  field :name, type: String
  field :starts_at, type: Date
  field :ends_at, type: Date

  belongs_to :project
  has_many :cards

  def todo_cards
    cards.where(status: Card::TODO)
  end

  def doing_cards
    cards.where(status: Card::DOING)
  end

  def done_cards
    cards.where(status: Card::DONE)
  end

  def to_s
    name
  end
end
