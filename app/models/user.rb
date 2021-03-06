class User < ActiveRecord::Base
  has_many :responses

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,gender,locale,age_range,email")
  end
end