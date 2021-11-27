class Prospect < ApplicationRecord
    belongs_to :user
    belongs_to :state
    has_many :conversations, dependent: :delete_all

    has_rich_text :content

    def save_conversation
        Conversation.create(content: content, prospect_id: self)
    end

    scope :prospectos, -> { where(:state_id => 1)}
    scope :interesados, -> { where(:state_id => 2)}
    scope :clientes, -> { where(:state_id => 3)}
end
