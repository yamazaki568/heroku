class Maker < ApplicationRecord
    has_many :maker_types, dependent: :destroy
    has_many :types, through: :maker_types
end
