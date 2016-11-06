class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      user.provider = auth.provider
      user.username = auth.info.nickname
      user.name = auth.info.name
      user.image = auth.info.image
      user.email = auth.info.email
    end
  end
end