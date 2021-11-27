class Prospect < ApplicationRecord
  has_many :conversations, dependent: :destroy
end
