PagSeguro.configure do |config|
  config.token       = Rails.application.secrets.PAGSEGURO_TOKEN
  config.email       = Rails.application.secrets.PAGSEGURO_EMAIL

  if Rails.env.production?
    config.environment = :production
  else
    config.environment = :sandbox
  end

  config.encoding    = "UTF-8" # ou ISO-8859-1
end
