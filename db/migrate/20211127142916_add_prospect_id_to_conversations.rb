class AddProspectIdToConversations < ActiveRecord::Migration[6.1]
  def change
    add_reference :conversations, :prospect, null: false, foreign_key: true
  end
end
