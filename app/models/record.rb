class Record < ApplicationRecord
  # Searchable
  include Searchable

  # Relations
  belongs_to :manual
  belongs_to :user

  # Validations
  validates :document_ref, :error, :manual, presence: true
  validates :error, length: { in: 0..1000 }
  validates :comment, length: { in: 0..1000 }
  validates :revision, length: { in: 0..1000 }

  # Scope for searching
  scope :search_by_manuals, ->(manual_id) { where(manual_id: manual_id) }
end
