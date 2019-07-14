require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'ap-northeast-1' #例 'ap-northeast-1'
  }

  config.fog_directory  = 'badjao'
  config.asset_host = 'https://s3-arn:aws:iam::778720294957:user/badjao.amazonaws.com/ここにバケット名を入れます'
end