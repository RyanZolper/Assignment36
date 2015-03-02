CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIE2JNFVI5GRODY5A',                        # required
    :aws_secret_access_key  => '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',                        # required
    #:region                 => 'US Standard',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 's3.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'tiybucket'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end
