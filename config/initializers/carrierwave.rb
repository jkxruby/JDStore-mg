CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'], # 你的 key
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], # 你的 secret key
      region:                'us-east-1', # 你的 S3 bucket 的 Region 位置
      s3_access_key_id      => ENV['S3_ACCESS_KEY'],
      s3_secret_access_key  => ENV['S3_SECRET_KEY']
    }
    config.storage :fog
    config.fog_directory = ENV['AWS_BUCKET_NAME'] # 你设定的 bucket name
  else
    config.storage :file
  end
end
