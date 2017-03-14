Mailgun.configure do |config|
  config.api_key = Rails.application.secrets.MAILGUN_SECRET.API_KEY
end
