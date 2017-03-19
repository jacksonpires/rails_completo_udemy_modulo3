if Rails.env.production?
  Mailgun.configure do |config|
    config.api_key = Rails.application.secrets.MAILGUN_SECRET_API_KEY
  end
end
