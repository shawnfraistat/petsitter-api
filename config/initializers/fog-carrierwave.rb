# CarrierWave.configure do |config|
#   config.ignore_integrity_errors = false
#   config.ignore_processing_errors = false
#   config.ignore_download_errors = false
#   # Use local storage if in development or test
#   if Rails.env.development? || Rails.env.test?
#     CarrierWave.configure do |config|
#       config.storage = :file
#     end
#   end
#
#   # Use AWS storage if in production
#   if Rails.env.production?
#     CarrierWave.configure do |config|
#       config.storage = :fog
#     end
#   end
#
#   config.fog_credentials = {
#     :provider               => 'AWS',                             # required
#     :aws_access_key_id      => ENV.fetch('ACCESS_KEY_ID'),            # required
#     :aws_secret_access_key  => ENV.fetch('SECRET_ACCESS_KEY'),     # required
#     :region                 => ENV.fetch('AWS_REGION')                    # optional, defaults to 'us-east-1'
#   }
#   config.fog_directory  = 'petsitter-bucket'               # required
#   #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil
#   #config.fog_public     = false                                  # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end
