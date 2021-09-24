class CheckItem < ApplicationRecord
  belongs_to :favorite, dependent: :destroy
  belongs_to :book
end
