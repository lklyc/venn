class ChangeAgeType < ActiveRecord::Migration
  def change
    change_column :users, :age_range, :string
  end
end
