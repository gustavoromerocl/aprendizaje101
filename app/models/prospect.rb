class Prospect < ApplicationRecord
    belongs_to :user
    belongs_to :states
    has_many :conversations
end
