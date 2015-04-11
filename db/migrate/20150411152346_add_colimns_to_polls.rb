class AddColimnsToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :title, :string
    add_column :polls, :blurb, :text
  end
end
