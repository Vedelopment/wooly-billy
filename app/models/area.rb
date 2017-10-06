class Area < ApplicationRecord
  has_many :hairs, as: :growable
end
