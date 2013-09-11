class CommentsController < ApplicationController


      def index
      	  @comments  = Comment.all
	  render json: @comments.to_json
      end

      def show
         @comment = Comment.find params[:id]
	 render json: @comment.to_json
      end


end
