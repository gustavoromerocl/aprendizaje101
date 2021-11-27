class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :status_name

      t.timestamps
    end
  end
end
