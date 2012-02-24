Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['FB_KEY'], ENV['FB_SECRET']
  
end