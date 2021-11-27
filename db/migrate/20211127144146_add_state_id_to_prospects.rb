class AddStateIdToProspects < ActiveRecord::Migration[6.1]
  def change
    add_reference :prospects, :state, null: false, foreign_key: true
  end
end
