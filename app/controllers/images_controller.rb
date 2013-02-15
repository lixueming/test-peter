class ImagesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @image = @article.images.create(params[:image])
    redirect_to article_path(@article)
  end
 
  def destroy
    @article = Article.find(params[:article_id])
    @image = @article.images.find(params[:id])
    @image.destroy
    redirect_to article_path(@article)
  end
end
