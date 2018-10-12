class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.image = auth.info.image
    end
  end
end
