class Hair < ApplicationRecord
  belongs_to :growable, polymorphic: true
end
