class Prospect < ApplicationRecord
    belongs_to :user
    belongs_to :state
    has_many :conversations

    has_rich_text :content

    def save_conversation
        Conversation.create(content: content, prospect_id: self)
    end


end
