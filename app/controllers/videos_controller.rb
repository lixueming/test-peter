class VideosController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @video = @article.videos.create(params[:video])
    redirect_to article_path(@article)
  end
 
  def destroy
    @article = Article.find(params[:article_id])
    @video = @article.videos.find(params[:id])
    @video.destroy
    redirect_to article_path(@article)
  end	
end
