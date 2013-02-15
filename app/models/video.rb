class Video < ActiveRecord::Base
  belongs_to :article
  attr_accessible :created_at, :video_url
end
