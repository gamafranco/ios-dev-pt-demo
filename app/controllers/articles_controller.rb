class ArticlesController < ApplicationController

      def index
      	  @articles  = Article.all
	  render json: @articles.to_json(
	  	 :include => { :comments => {}})
      end

      def show
         @article = Article.find params[:id]
	 render json: @article.to_json
      end

end
