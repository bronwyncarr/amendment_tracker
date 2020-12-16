class Role < ApplicationRecord
  # Relations
  has_many :users

  #Validations
  validates :name, presence: true
end
