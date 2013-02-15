class Article < ActiveRecord::Base
	validates :title, :presence => true
  	attr_accessible :created_at, :next_article_id, :previous_article_id, :text, :title

  	has_many :images
  	has_many :videos


end
