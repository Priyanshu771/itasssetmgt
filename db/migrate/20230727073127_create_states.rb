class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :state_name
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
