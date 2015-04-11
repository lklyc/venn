class AddPollUserIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :user_id, :integer
    add_column :responses, :poll_id, :integer
  end
end
