class Choice
  include Mongoid::Document
  field :description, type: String

  belongs_to :survey

end
