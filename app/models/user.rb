class User < ActiveRecord::Base
  include Clearance::User

  def self.from_omniauth(auth)
    user = User.find_or_initialize_by(email: auth.info.email)
    if user.new_record?
      user.username = auth.extra.raw_info.name
      user.provider = auth.provider
      user.uid = auth.uid
      user.save
    else
      user.update(provider: auth.provider, uid: auth.uid) if ((user.uid==nil)||(user.provider==nil))
    end
    user
  end
end



