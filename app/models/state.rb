class State < ApplicationRecord
    has_many :prospects, dependent: :delete_all
end
