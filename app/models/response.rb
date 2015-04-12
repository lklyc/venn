class Response < ActiveRecord::Base
  belongs_to :poll
  belongs_to :user

  validates_uniqueness_of :user,scope: [:poll_id]
end