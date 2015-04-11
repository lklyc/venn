class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :ah_index
      t.timestamps
    end
  end
end
