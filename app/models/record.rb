class Record < ApplicationRecord
  include Searchable

  belongs_to :manual
  belongs_to :user

  # Scope for searching
  scope :search_by_manuals, ->(manual_id) { where(manual_id: manual_id) }
end
