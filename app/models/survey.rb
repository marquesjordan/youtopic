class Survey
  include Mongoid::Document
  field :content, type: String

  belongs_to :topic
  has_many :choices

  accepts_nested_attributes_for :choices
end
