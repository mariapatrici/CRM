class Conversation < ApplicationRecord
  belongs_to :prospect

  validates :content, presence: true
end
