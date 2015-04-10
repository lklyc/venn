class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :fbid
      t.string :gender
      t.string :locale
      t.integer :age_range
      t.string :email
    end
  end
end
