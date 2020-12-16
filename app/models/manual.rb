class Manual < ApplicationRecord
    # Relations    
    has_many :records, dependent: :destroy
end
