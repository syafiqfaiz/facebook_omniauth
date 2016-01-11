Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY']|| '895697447180007', ENV['FACEBOOK_SECRET']|| '6f543652925226ea4c656583b7ce2f85'
end