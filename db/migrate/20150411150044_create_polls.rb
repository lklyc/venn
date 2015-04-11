class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.text :answer_hash
      t.datetime
    end
  end
end
