class CommentsController < ApplicationController
    # Test me ! neu
    def create
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.create!(comment_params)
	    respond_to do |format|
	      format.html { redirect_to @post }
	      format.js
	    end
	  end
	  def comment_params
			params.require(:comment).permit(:body)
	end
	
end
