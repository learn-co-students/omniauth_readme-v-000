class User < ActiveRecord::Base

  def self.find_or_create_by_auth_hash(auth)
    self.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
  end
end
