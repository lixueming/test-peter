class Image < ActiveRecord::Base
  belongs_to :article
  attr_accessible :created_at, :image_url
end
