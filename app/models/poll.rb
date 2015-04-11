class Poll < ActiveRecord::Base
  has_many :responses
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  #serialize :answer_hash, JSON

end