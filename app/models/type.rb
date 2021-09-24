class Type < ApplicationRecord
    has_many :maker_types, dependent: :destroy
    has_many :makers, through: :maker_types
end
